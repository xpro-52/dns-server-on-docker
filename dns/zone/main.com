$TTL 86400
@   IN  SOA ns1.main.com. admin.main.com. (
        2024092801  ; Serial
        600         ; Refresh
        3600        ; Retry
        1209600     ; Expire
        86400 )     ; Minimum TTL

@   IN  NS  ns1.main.com.
@   IN  A   192.168.100.10
ns1 IN  A   192.168.100.10
