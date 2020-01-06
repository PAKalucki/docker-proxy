![](https://github.com/pakalucki/proxy/workflows/master/badge.svg)


docker container run -d -p 443:443 --link transmission --restart=always --name=proxy pakalucki/proxy:latest