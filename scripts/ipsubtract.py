from ipaddress import ip_network

start = '0.0.0.0/0'
# exclude = ['8.8.8.8', '10.8.0.0/24']
# google and google scholar
exclude = ['172.217.0.0/16', '142.250.0.0/16']

result = [ip_network(start)]
for x in exclude:
    n = ip_network(x)
    new = []
    for y in result:
        if y.overlaps(n):
            new.extend(y.address_exclude(n))
        else:
            new.append(y)
    result = new

print(','.join(str(x) for x in sorted(result)))