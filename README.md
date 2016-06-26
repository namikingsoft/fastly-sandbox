Sandbox of fastly [![CircleCI][circle-badge]][circle-url]
========================================

Deploy
----------------------------------------

### Preparation on deploy server
```bash
git clone https://github.com/namikingsoft/fastly-sandbox.git
echo 'command="fastly-sandbox/bin/deploy.sh",no-pty,no-port-forwarding,no-X11-forwarding,no-agent-forwarding ssh-rsa AAAA...' \
  >> .ssh/authorized_keys
```

[circle-badge]: https://circleci.com/gh/namikingsoft/fastly-sandbox/tree/master.svg?style=svg
[circle-url]: https://circleci.com/gh/namikingsoft/fastly-sandbox/tree/master
