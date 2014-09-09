hook-receiver
=============

Just for testing GitHub service hooks

```
bundle
./start.sh
```

Then point your web hook configuration at the IP where you're running this on port 4567, at the 'payload' endpoint. E.g.: `http://129.168.1.100:4567/payload`

Set the content type to **application/json**
