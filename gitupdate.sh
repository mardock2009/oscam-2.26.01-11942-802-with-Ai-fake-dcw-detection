#!/bin/bash

echo "===== GIT STATUS ====="
git status

echo ""
read -p "Podaj opis commita: " msg

if [ -z "$msg" ]; then
  echo "❌ Commit message nie może być puste."
  exit 1
fi

git add -A
git commit -m "$msg"

if [ $? -ne 0 ]; then
  echo "❌ Commit nie powiódł się."
  exit 1
fi

git push --force origin main

echo "✅ Gotowe. Repo zaktualizowane."
