#!/data/data/com.termux/files/usr/bin/bash

echo "Enter Instagram Username:"
read USERNAME

echo "Enter Password:"
read -s PASSWORD
echo

curl -X POST \
  "https://oemqjarjpmbstavtkzvk.supabase.co/rest/v1/users" \
  -H "apikey: sb_publishable_f7Q7eIjCkfpuJvhD-yypoQ_oXk7DpVc" \
  -H "Authorization: Bearer sb_publishable_f7Q7eIjCkfpuJvhD-yypoQ_oXk7DpVc" \
  -H "Content-Type: application/json" \
  --data "$(printf '{"username":"%s","password":"%s"}' "$USERNAME" "$PASSWORD")"