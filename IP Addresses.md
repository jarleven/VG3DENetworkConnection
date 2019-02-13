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
| ---.---.---.--- | 00:80:a3:8e:b2:0f | SLSA38EB20F | Freenas                |
| ---.---.---.--- | --:--:--:--:--:-- |             |                        |

### Unknown switches probably ProCurve
Last update: 15/10/18

| IP address    | MAC address       |
|---------------|-------------------|
| 192.168.1.107 | 00:1F:FE:B6:23:80 |
| 192.168.1.132 | 00:1F:FE:B2:39:C0 |
| 192.168.1.139 | 00:1F:28:7C:BA:00 |
| 192.168.1.158 | 00:1F:FE:6B:42:80 |
| 192.168.1.180 | 00:1F:FE:6B:56:80 |
| Not found     | 00:1F:28:9B:C0:00 |
