cd /v2raybin

# echo -e "$CONFIG_JSON" > config.json

if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo -e "$CERT_PEM" > cert.pem
  echo -e "$KEY_PEM"  > key.pem
fi

cp -f /config.json .
chmod +x v2ray v2ctl
sed -i "s/your_uuid/$UUID/g" config.json
echo $UUID
cat config.json
./v2ray
