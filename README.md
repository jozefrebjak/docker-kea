
# Kea DHCP server with docker

Alpine based image of Kea DHCP server.

## Configuration

Working directory: `/etc/kea`

```
etc
└── kea
    ├── kea-ctrl-agent.conf
    ├── kea-dhcp-ddns.conf
    ├── kea-dhcp4.conf
    ├── kea-dhcp6.conf
    └── keactrl.conf
```

## Hooks

Working directory: `/usr/local/lib/kea/hooks`

```
usr
└── local
    └── lib
        └──kea
            └── hooks
                ├── libdhcp_bootp.so
                ├── libdhcp_flex_option.la
                ├── libdhcp_flex_option.so
                ├── libdhcp_ha.la
                ├── libdhcp_ha.so
                ├── libdhcp_lease_cmds.la
                ├── libdhcp_lease_cmds.so
                ├── libdhcp_mysql_cb.la
                ├── libdhcp_mysql_cb.so
                ├── libdhcp_pgsql_cb.la
                ├── libdhcp_pgsql_cb.so
                ├── libdhcp_run_script.la
                ├── libdhcp_run_script.so
                ├── libdhcp_stat_cmds.la
                └──libdhcp_stat_cmds.so

```

## Build

```sh
./build.sh
```

## Usage

With `docker run`:

```sh
docker run -it --rm jozefrebjak/kea:2.1.3
```

Kea DHCPv4 default configuration server with `docker run`:

```sh
docker run -it --rm jozefrebjak/kea:2.1.3 kea-dhcp4 -c etc/kea/kea-dhcp4.conf
```

Kea DHCPv6 default configuration server with `docker run`:

```sh
docker run -it --rm jozefrebjak/kea:2.1.3 kea-dhcp6 -c etc/kea/kea-dhcp6.conf
```

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.