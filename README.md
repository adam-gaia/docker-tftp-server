# TFTP Server



## Notes
* 
* Privlidged port (< 1024) can't be forwared with docker without extra effort
    * https://medium.com/elbstack/docker-go-and-privileged-ports-d6354db472c3
    * `RUN setcap 'cap_net_bind_service=+ep <EXEC>`
* 
