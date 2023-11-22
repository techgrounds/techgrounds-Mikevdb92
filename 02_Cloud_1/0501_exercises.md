## Exercises Week 5

### ALB & Auto Scaling Part 1
### Opdracht Beschrijving  
Maak een Virtual Machine Scale Set met de volgende vereisten:
- Ubuntu Server 20.04 LTS - Gen1
- Size: Standard_B1ls
- Allowed inbound ports:
    * SSH (22)
    * HTTP (80)
- OS Disk type: Standard SSD
- Networking: defaults
- Boot diagnostics zijn niet nodig

- Custom data:  

```
#!/bin/bash     
sudo su 
apt update  
apt install apache2 -y  
ufw allow 'Apache'  
systemctl enable apache2    
systemctl restart apache2   
```
- Initial Instance Count: 2
- Scaling Policy: Custom
- Aantal VMs: minimaal 1 en maximaal 4
- Voeg een VM toe bij 75% CPU gebruik
- Verwijder een VM bij 30% CPU gebruik
    
### ALB & Auto Scaling Part 2
### Opdracht Beschrijving
- Controleer of je via het endpoint van je load balancer bij de webserver kan komen.
- Voer een load test uit op je server(s) om auto scaling the activeren. Er kan een delay zitten in het creëren van nieuwe VMs, afhankelijk van de settings in je VM Scale Set. Let op: de Azure Load Testing service kan prijzig zijn. Je kan ook inloggen op de VM om een handmatige stress test te doen.


## Azure Files, App Service, CDN , DNS, SQL
### Opdracht Beschrijving
Doe praktische ervaring op met:
- Azure Files
- SQL Databases in Azure
- Azure App Service 

Doe theoretische kennis op van:
- Azure CDN
- Azure DNS