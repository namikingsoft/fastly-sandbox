Sandbox of fastly
========================================

Deploy
----------------------------------------

### Preparation on deploy server
```bash
git clone https://github.com/namikingsoft/fastly-sandbox.git
echo 'command="fastly-sandbox/bin/deploy.sh",no-pty,no-port-forwarding,no-X11-forwarding,no-agent-forwarding ssh-rsa AAAA...' \
  >> .ssh/authorized_keys
```
