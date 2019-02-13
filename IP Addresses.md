# Reserved IP addresses
Last update: 25/01/19

| Subnet    | Fra | Til | Kommentar            |
|-----------|----:|----:|----------------------|
| 192.168.1 |   2 |   2 | WDS Server Host      |
| 192.168.1 |  80 |  88 | 3DEA Student Servers |
| 192.168.1 |  90 |  98 | 3DEA Student Laptops |
| 192.168.1 | 100 | 250 | DHCP Server          |



# Static IP addresses
Last Update: 06/02/19

| Address         | VLAN ID | Unit name      | MAC               | Virtual | Comment                                    |
|-----------------|---------|----------------|-------------------|---------|--------------------------------------------|
| 192.168.1.1/24  |       1 | Router         | --:--:--:--:--:-- |         | It's the gateway and router                |
| 192.168.1.2/24  |       1 | BATMAN         | B4:99:BA:C1:8F:98 |         | WDS Server Host                            |
| 192.168.1.3/24  |       1 | Starlord       |                   | BATMAN  | Web/torrent server                         |
| 192.168.1.4/24  |       1 | Freenas        | --:--:--:--:--:-- |         | File share server                          |
| 192.168.1.5/24  |       1 | Flash          | E8:39:35:21:60:78 |         | An ESXI hyper visor management network     |
| 192.168.1.10/24 |       1 |                | --:--:--:--:--:-- |         | An IP camera                               |
| 10.0.5.1/24     |       5 | ROBIN          | --:--:--:--:--:-- | BATMAN  | WDS, DHCP, DNS server (VM on BATMAN)       |
|                 |         |                | --:--:--:--:--:-- |         |                                            |



# iLO
Last Update: 06/02/19

| Server Serial Number | Hostname        | Server Name     | MAC               | Installed on machine |
|----------------------|-----------------|-----------------|-------------------|----------------------|
| CZ22130BS5           | ILOFLASH.local  | ILOFLASH.LOCAL  | E8:39:35:21:60:78 | Flash                |
| CZ21290CDX           | ILOBATMAN.local | ilobatman.local | B4:99:BA:C1:8F:9E | BATMAN               |


# Remote Screen Device Addresses
Last Updeate: 07/02/19

| Static IP       | MAC               | Host Name   | Connected To           |
|-----------------|-------------------|-------------|------------------------|
| ---.---.---.--- | 00:80:A3:8E:B2:0F | SLSA38EB20F | Freenas                |
| ---.---.---.--- | --:--:--:--:--:-- |             |                        |

# Known switches
Last update: 13/02/19

| IP              | DHCP | MAC               | Hostname                      | Produser                   |
|-----------------|------|-------------------|-------------------------------|----------------------------|
| 192.168.001.111 | DHCP | B0:5A:DA:97:47:80 | 10G Loft                      | Hewlett Packard            |
| 192.168.001.139 | DHCP | 00:1F:28:7C:BA:00 | POE Loft                      | HPN Supply Chain           |
| 192.168.001.158 | DHCP | 00:1f:fe:6b:42:80 | DE 2101A R3 S2                | HPN Supply Chain           |
| 192.168.001.114 | DHCP | e0:07:1b:c3:12:00 | DE 2101 R3 S3                 | Hewlett Packard Enterprise |
| ---.---.---.--- | DHCP | --:--:--:--:--:-- |                               |                            |
| ---.---.---.--- | DHCP | --:--:--:--:--:-- |                               |                            |
| ---.---.---.--- | DHCP | --:--:--:--:--:-- |                               |                            |

### Probably unknown switches
Last update: 13/02/19

| IP address    | MAC address       |
|---------------|-------------------|
| 192.168.1.107 | 00:1F:FE:B6:23:80 |
| 192.168.1.132 | 00:1F:FE:B2:39:C0 |
| 192.168.1.180 | 00:1F:FE:6B:56:80 |
| NOT FOUND     | 00:1F:28:9B:C0:00 |
| 192.168.1.142 | B4:39:D6:41:66:40 |
| 192.168.1.153 | 00:1f:fe:e0:fb:80 |
| 192.168.1.244 | 00:1f:28:f1:ca:40 |
| 192.168.1.118 | e8:39:35:48:50:f7 |
| 192.168.1.146 | e8:39:35:3f:2c:7a |
| 192.168.1.155 | e8:39:35:5b:54:e2 |
| 192.168.1.241 | e8:39:35:35:f2:ca |
| 192.168.1.249 | e8:39:35:5b:5c:27 |