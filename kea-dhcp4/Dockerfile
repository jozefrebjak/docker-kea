FROM jozefrebjak/kea:2.1.3

ARG VERSION

LABEL manteiner="Jozef Rebjak <jozefrebjak@icloud.com>" \
      description="ISC Kea DHCPv4 Server" \
      version="2.1.3"

COPY /rootfs/entrypoint /entrypoint
RUN chmod +x entrypoint

WORKDIR /root

EXPOSE 67/UDP

ENTRYPOINT ["/entrypoint"]
CMD ["kea-dhcp4","-d","-c","/etc/kea/kea-dhcp4.conf"]