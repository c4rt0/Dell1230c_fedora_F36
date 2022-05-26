dnf install cups hplip
systemctl start cups
firewall-cmd --zone=FedoraServer --add-service=ipp
firewall-cmd --zone=FedoraServer --add-service=ipp --permanent
sed -i -e 's/^Listen localhost:631$/Port 631/' /etc/cups/cupsd.conf
systemctl restart cups
cupsctl --remote-admin --remote-any --share-printers --user-cancel-any
systemctl restart cups