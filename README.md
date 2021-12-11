# J4Ndiss
JNDI Exploit Server for exploiting `#log4shell` ([CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228))

To start the server, customize the port exposure within the command.
```bash
$ docker build -t jandis .
$ docker run --rm -it -p 8088:8088 -p 3789:3789 --name jndi jandis
```

OR

```bash
$ docker run --rm -it -p 8088:8088 -p 1389:1389 --name jndiserver naryal2580/jandis
```
