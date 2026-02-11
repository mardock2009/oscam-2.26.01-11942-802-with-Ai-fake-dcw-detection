> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Architecture

*_"it's not called computer science for nothing" (roro)*_

## Where are we now :

Well .. we're in a deep brown smelly thing ...

Jokes aside :

 * the app use fork to spawn processes and use shmem to share data structure between the running processes ... bad , ugly, did I say bad !.. This makes debugging the code difficult.

 * There is no unified interface to add modules, reader and other things we might need. The code is all over the place, we don't really know where to change/add things when we want to add support for a new systems (reader, crypto, sharing protocol, ...).

 * The IO code (csctapi) is a nightmare. Specially he multiple layers insanity :

   * reader ->ctapi -> card terminal -> APDU, IO_Serial, SCI, CT_Slot.

   * CT_Slot->IFD_Towitoko & ICC -> IO_Serial, SCI -> card (finally !!!!!)

   * and a combination of all the above in no particular order or logic !!!
So it's almost impossible to easily add new reader type in this mess (like PCSC, ..), new module (cccam, ...) or new crypto.




## What do we need :

 * Move from fork()  to threads. This will make debugging with GDB much easier.
 * We need to organize the code around 4 functionalities : readers, card sharing, CAM (viaccess, cryptoworks,nds, ..), utils (logging, monitoring,...). these need to be managed by a central piece of code responsible for routing the messages in between these parts, creating threads as needed, reading and parsing the config (re-reading it on the fly if needed),...
 * Do NOT use shmem. Once we have thread we need good data structure in memory with mutex for write access (list of reader, list of sharing proto, ...).
 * Readers :
   * Each reader need to implement its IO layer (serial, SCI, smartreader+, PCSC, ....). The reader init should only return the ATR. We need to define the reader API so that every reader implementation has the same set of function. Internal function (smartreader+ support, sci, ...) should not be visible from the code using this API.
 * Crypto modules. They should have access to the reader to retrieve the ATR, check if the ATR match their crypto type (and return a OK value) and use the reader for all their communication with the card. All crypto module also need a common API (do_emm, do_ecm). All internal function shouldn't no be visible to the calling code. Each crpto module should use a queue to receive the messages (ECM,EMM). We need to define the message format. The reponse to the message should also go in the queue of the main thread as it is responssible for the routing of the mesages to and from a moduke (reader, sharing).
 * Sharing modules : these need to access the crypto module (for local card) or a reader (for remote cards).
 * Why are we using libs ?... this code should be compiled in the main code, if the code belong to a generic routine it can me considered as utility code and all be place in a subdirectory. Making this a lib only make sense if you are going to build a lot of code using it... which is not our case.. who in the world would like to use our crappy csctapi lib ... in addition to this most of this code is specific to our code as it uses some variables and definition from globals.h. For the cscrypt one this is can be discuss firther but I don't see the advantage (if someone sees one let me know..). And finaly we're linking the .a .. so it's not even a dynamic lib that could be updated independently from the rest of the code...


All of these module need to be in their own thread and be responsible for updating their data structure (this data structure can be read by other thread based on what they need, only the tread owning the structure can write in it, other thread can send data update to the thread ... queues, linked lists and stacks are your friends.

The main thread should only be parsing the config, spawning the threads , routing messages and monitoring the threads (alert if they die but not quit the whole app, try to re-spawn a thread if it dies).

The logging thread should use a queue instead of the crappy pipes (not working in some case) that we have now (it's probably due to the fork architecture).

I don't think we need to go as far as making all modules and readers as plugins, but we definitely need some common interface to facilitate the integration of new modules and reader.



## Tech notes :

 * *Card init* : the card should be initialized from the reader lever using its IO api. The reset must be done at 9600 Bauds multiplied by the freq ratio (mhz/cardmhz). The IO layer should take care of all the changes needed to communicate with the card. The ATR is returned to the reader after each reset. ALL card reply to an ATR at 9600 at their base frequency (3.5712MHz is the most common frequency but some do 6MHz, this should not be of any concern for the reset). At that point the reader needs to do 2 things : identify the card, decide if a speed changes is needed (auto-switch, no switch, PTS) or if some parameter changes are needed (inverse proto, different parity, ..) until we get a correct ATR (or fail to get one). Once the change is done, the crypto layer (viaccess, seca, nds, ...) is responsible for finishing the init. This means a crypto system needs to be attached to the reader (as a thread probably).
 * Upwards compatibility: only break existing settings/options when this serves a purpose. So renaming an option "because it makes more sense" is "not done". If it bothers you that much, improve the overall functionality on that option, that might give you an excuse...


## Coding conventions :

These are just my opinion and we need to discuss them.
 * don't uses spaces, use tabs.  Why ? Because this allows you to set the number of space for a tab according to your own taste. It also make the indentation consistent across all files.
 * No 1 liners. Things like if (foo) bar; return 1; should be avoided. We won't kill you (or we'll make sure noody can trace it back to us) if you do it but we'll probably change it.
 * curly brackets ( these ones "{ }") positions... Apparently I lost that battle and everybody but me want the K&R ones...
```
if (foo) {
    code
    if (foo2) {
        code2
        code2
    }
    code
}
```
 * I hate global variables. If a variable is needed in a function (more exactly its value), it should be passed as a parameter to the function. This will avoid variable scope issue (fun fun fun with fork() ..). More important: global variables have a negative effect on reentrancy and thread-safety!
 * Constants : ALL constants should be in a constants.h (or something similar) and be used everywhere in the code (array size, version, ...).
 * Avoid static XXXX in function. Different version of GCC treat it differently and you my endup with unwanted behavior in your code.
 * general structure definition need to be in files related to the code that use them. Don't be afraid to use typedefs. They can be include in a general .h file (oscam-types.h).
 * Use proper header files:
```
ifndef __myfile_h__
#define __myfile_h__
...
#endif // __myfile_h__
```
 * Your function prototype must be define in the .h, they can then be included by the other part of the code that needs them... let's not do the same crap as what we have in globals.h right now with multiple definition of the function prototype because we include globals.h everywhere but xome of the code needs to export function.. ending up in a egg and chicken problem.
 * No C++ (I lost that battle too .... sucks to be me ;) ).
 * No changing of lines of code when it is purely optical. We all can pull the code through "indent" and upload it to trunk, but then we lose the beautiful bugtracing capabilities of svn. DEVs should check on this with "svn diff" BEFORE running "svn commit".
 * 4-space indent, linux_kernel_style_naming
 * use of proper data structures (QUEUE, LINKED_LIST, ARRAY, STACK etc.) - cogsi already has code for these ready to go. This will improve the code readability and efficiency.


# Further cogsi thoughts (to be 'committed' to the doc by Roro ::)

Because Dingo35 hates code trees (and he's probably right - lets make use of prefixes.

 - ds-* (data structures)
  - ds-llist.h/.c
  - ds-queue.h/.c
  - ds-stack.h/.c
  - ds-array.h/.c
 - util-* (support code)
  - util-macros.h
 - system-* (crypto systems)
 - reader-* (physical readers) - some proper API needed here
 - proto-* (cs protocols) - client and/or server
  - proto-newcamd
  - proto-camd3
  - proto-radegast
  - proto-cccam
  - proto-gbox
 - oscam.c - main launcher code
 - oscam-types.h - globally used types
 - constants.h - #defines constants
 - debug.h/.c - debug handler
 - net.h/.c - network handler