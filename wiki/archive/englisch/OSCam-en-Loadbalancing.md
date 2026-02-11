> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/Loadbalancing

## Loadbalancing

### How does it work?

In networking, load balancing is a technique to distribute workload evenly across two or more computers, network links, CPUs, hard drives, or other resources, in order to get optimal resource utilization, maximize throughput, minimize response time, and avoid overload.

In OSCam, load balancing is the algorithm used to determine which of the configured readers should be used to serve an ECM request.

Each reader starts off with a given weight (default: 100), as specified in the configuration.

[![](/images/c/c5/Lb_weight_calc2.png)](/wiki/Datei:Lb_weight_calc2.png)

### How does OSCam determine a valid reader?

For each ECM request, the server determines the valid readers. This is how it's done:

+   The group of the account matches the group of the reader
+   The reader is enabled and not deleted
+   The caid of the ECM request matches the caid of the reader or the reader has no caid specified
+   The service of the ECM request matches the service of the reader or the reader has no service specified
+   The ident of the ECM request matches the ident of the reader or the reader has no ident specified
+   The chid of the ECM request matches the chid of the reader or the reader has no chid specified
+   If the caid is 500, additional checks are done on nanos

If a reader passes all these checks, then the reader can serve the ECM request. All configured readers are validated, thus building a list of all readers that could serve the ECM request. Load balancing is the algorithm used to determine which reader is selected to serve the request, out of the list of possible readers.

The selection is done based on the load balancing *weights* (LB\_WERT). For each valid reader, the LB\_WERT value is calculated as follows:

For lb\_mode=1, the weight for a reader is divided by the average response time of requests sent to the reader, i.e. lower average response time means higher priority.

For lb\_mode=2, the weight for a reader depends on when the reader was last used, i.e. oldest reader has higher priority.

For lb\_mode=3, the weight for a reader is proportional with the usage level of the reader, i.e. least used reader has higher priority.

The possible readers are sorted by the computed LB\_WERT values (smaller first), and the reader is selected as follows:

+   If "Prefer local cards" is selected, the first lb\_nbest number of readers are selected, which are not proxies.
+   If we haven't selected lb\_nbest readers yet, the remaining readers are assigned in sequence, until lb\_nbest readers are reached.
+   After selecting lb\_nbest readers, the fallback readers are assigned (lb\_nfb).

Normally, lb\_nbest = 1, because it's sufficient to query only one reader.

Additional readers can be selected:

+   If no statistics are available, the reader is selected.
+   If statistics are available, but lb\_min\_ECMcount has not been reached yet, then the reader is selected.
+   Statistics are available, ECM request count > lb\_min\_ECMcount, then the reader is selected if the average response time is greater than lb\_retrylimit and the statistics are reset.

The ECM request is sent to all the appropriate readers.

**If a reader answers with "not found", then it gets blocked.**

**If a reader times out 5 times successively on ECM requests, then it gets blocked.** (see lb\_min\_ecmcount)

**If the reader responds correctly, then the response time is measured and added to the statistics.**

**If service or ident are present, ECM requests for the assigned readers are always implemented.**