# Opdrachten week 5

## ALB & Auto Scaling Part 1
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
    
## ALB & Auto Scaling Part 2
### Opdracht Beschrijving
- Controleer of je via het endpoint van je load balancer bij de webserver kan komen.
- Voer een load test uit op je server(s) om auto scaling the activeren. Er kan een delay zitten in het creëren van nieuwe VMs, afhankelijk van de settings in je VM Scale Set. Let op: de Azure Load Testing service kan prijzig zijn. Je kan ook inloggen op de VM om een handmatige stress test te doen.

## ALB & Auto Scaling Uitwerking opdracht 1 en 2
Create/Review virtual machine scale set 
![scaleset01](../00_includes/0501_virtualmachinescaleset_create01.png) 
![scaleset02](../00_includes/0501_virtualmachinescaleset_create02.png) 
![scaleset03](../00_includes/0501_virtualmachinescaleset_create03.png) 

Load Balancer deployed en het public ip voor de load balancer   
![loadbalancer](../00_includes/0501_virtualmachinescaleset_loadbalancerip.png) 
Preview van de webpagina via load balancer ip   
![preview](../00_includes/0501_virtualmachinescaleset_loadbalanceriptest.png) 

Scaling rules input. Bij 75% cpu gebruik komt er 1 vm bij, er zit een delay van 5 minuten in zodat het systeem niet reageert op mini pieken in cpu gebruik. Bij 30% wordt het downscale process geactiveerd, ook hier is dit delay aanwezig.    
![scaling settings](../00_includes/0501_virtualmachinescaleset_scalingsettings.png)

Stress test in terminal. Virtual machine stresstest van 80 % cpu, dit moet ervoor zorgen dat de auto scaling geactiveerd wordt en er meerder vm's aangemaakt worden.    
![TerminalScalecmd](../00_includes/0501_virtualmachinescaleset_scaletestterminal.png) 
Start met 2 instances (bij het opzetten schaalde deze automatisch terug naar 1 vm vanwege het lage cpu verbruik) 
![Start](../00_includes/0501_virtualmachinescaleset_scale1n2.png) 
Steekproef tijdens de test, 2 vms upscale naar 3 vms.
![start2vmUpto3vm](../00_includes/0501_virtualmachinescaleset_scale2n3.png) 
Een tijdje na de test is er gedownscaled terug naar 1 vm.
![backto1](../00_includes/0501_virtualmachinescaleset_scalebackto1.png) 

## Azure Files, App Service, CDN , DNS, SQL
### Opdracht Beschrijving
Doe praktische ervaring op met:
- Azure Files
- SQL Databases in Azure
- Azure App Service 

Doe theoretische kennis op van:
- Azure CDN
- Azure DNS

### Azure Files
Azure file > File share 
![Fileshare](../00_includes/0501_azurefiles_fileshare.png)

### Azure SQL Database
Create sql Database 
![dbcreate01](../00_includes/0501_azuresql_create.png) 
![dbcreate02](../00_includes/0501_azuresql_create2.png)

Database server overview    
![dbserver](../00_includes/0501_azuresql_databaseserver.png) 

SQL database overview   
![sqldb](../00_includes/0501_azuresql_sqldatabase.png) 

### Azure App Service
App service types   
![types](../00_includes/0501_appservices_types.png)

Create web app + database
![webappdbcreate01](../00_includes/0501_azurewebapp_create.png) 
![webappdbcreate02](../00_includes/0501_azurewebapp_create2.png) 

Create app service zonder database
![webappcreate](../00_includes/0501_azurewebapp_firstappcreate.png)

App service overview
![webapp](../00_includes/0501_azurewebapp_webapp.png) 
Web app public ip webpage preview      
![pagepreview](../00_includes/0501_azurewebapp_ippreview.png) 


### Extra opdracht Build first webapp
- [Youtube buildYourFirstWebApp](https://www.youtube.com/watch?v=0QO2jdinCoQ)