# Azure Virtual Network([VNets](https://learn.microsoft.com/nl-nl/azure/virtual-network/virtual-networks-overview))
Azure Virtual Network is een service die de fundamentele bouwsteen vormt voor uw privénetwerk in Azure. Met een exemplaar van de service (een virtueel netwerk) kunnen veel typen Azure-resources veilig met elkaar, internet en on-premises netwerken communiceren. Deze Azure-resources omvatten virtuele machines (VM's).

Een virtueel netwerk is vergelijkbaar met een traditioneel netwerk dat u in uw eigen datacenter uitvoert. Maar het biedt extra voordelen van de Azure-infrastructuur, zoals schaal, beschikbaarheid en isolatie.

### Waarom een virtueel Azure-netwerk gebruiken?
Belangrijke scenario's die u kunt bereiken met een virtueel netwerk zijn onder andere:

- Communicatie van Azure-resources met internet.
- Communicatie tussen Azure-resources.
- Communicatie met on-premises resources.
- Filteren van netwerkverkeer.
- Routering van netwerkverkeer.
- Integratie met Azure-services.

### Communiceren met internet
Alle resources in een virtueel netwerk kunnen standaard uitgaand communiceren met internet. U kunt ook een openbaar IP-adres, NAT-gateway of openbare load balancer gebruiken om uw uitgaande verbindingen te beheren. U kunt inkomend communiceren met een resource door een openbaar IP-adres of een openbare load balancer toe te wijzen.

Wanneer u alleen een interne standaard load balancer gebruikt, is uitgaande connectiviteit pas beschikbaar als u definieert hoe uitgaande verbindingen moeten werken met een openbaar IP-adres op exemplaarniveau of een openbare load balancer.
### Communicatie tussen Azure-resources
Azure-resources communiceren veilig met elkaar op een van de volgende manieren:

- **Virtueel netwerk**: u kunt VM's en andere typen Azure-resources implementeren in een virtueel netwerk. Voorbeelden van resources zijn App Service Environments, Azure Kubernetes Service (AKS) en Azure Virtual Machine Scale Sets. Zie Toegewezen Azure-services implementeren in virtuele netwerken voor een volledige lijst met Azure-resources die u in een virtueel netwerk kunt implementeren.
- **Service-eindpunt voor virtueel netwerk**: u kunt de privéadresruimte van uw virtuele netwerk en de identiteit van uw virtuele netwerk uitbreiden naar Azure-serviceresources via een directe verbinding. Voorbeelden van resources zijn Azure Storage-accounts en Azure SQL Database. Met service-eindpunten kunt u uw kritieke Azure-serviceresources alleen beveiligen naar een virtueel netwerk. Zie Service-eindpunten voor virtuele netwerken voor meer informatie.
- **Peering van virtuele netwerken**: u kunt virtuele netwerken met elkaar verbinden met behulp van virtuele peering. De resources in beide virtuele netwerken kunnen vervolgens met elkaar communiceren. De virtuele netwerken die u verbindt, kunnen zich in dezelfde of verschillende Azure-regio's bevinden. Zie Peering van virtuele netwerken voor meer informatie.

### Communiceren met on-premises resources
U kunt uw on-premises computers en netwerken verbinden met een virtueel netwerk met behulp van een van de volgende opties:
- **Punt-naar-site virtueel particulier netwerk (VPN)**: tot stand gebracht tussen een virtueel netwerk en één computer in uw netwerk. Elke computer die verbinding wil met een virtueel netwerk moet de verbinding hiervoor configureren. Dit verbindingstype is handig als u net aan de slag gaat met Azure of voor ontwikkelaars, omdat er weinig of geen wijzigingen in een bestaand netwerk voor nodig zijn. De communicatie tussen uw computer en een virtueel netwerk wordt verzonden via een gecodeerde tunnel via internet. Zie Over punt-naar-site-VPN voor meer informatie.
- **Site-naar-site-VPN**: tot stand gebracht tussen uw on-premises VPN-apparaat en een Azure VPN-gateway die is geïmplementeerd in een virtueel netwerk. Met dit verbindingstype krijgen alle on-premises resource die u toestemming geeft toegang tot een virtueel netwerk. De communicatie tussen uw on-premises VPN-apparaat en een Azure VPN Gateway wordt verzonden via een gecodeerde tunnel via internet. Zie Site-to-site VPN voor meer informatie.
- **Azure ExpressRoute**: tot stand gebracht tussen uw netwerk en Azure, via een ExpressRoute-partner. Deze verbinding is een privéverbinding. Verkeer gaat niet via internet. Zie Wat is Azure ExpressRoute? voor meer informatie.

## Opdracht 1
Maak een Virtual Network met de volgende vereisten:
- Region: West Europe
- Name: Lab-VNet
- IP range: 10.0.0.0/16
Vereisten voor subnet 1:
- Name: Subnet-1
- IP Range: 10.0.0.0/24
- Dit subnet mag geen route naar het internet hebben
Vereisten voor subnet 2:
- Name: Subnet-2
- IP Range: 10.0.1.0/24

## Opdracht 2
Maak een VM met de volgende vereisten:
- Een apache server moet met de volgende custom data geïnstalleerd worden:
``````
#!/bin/bash
sudo su
apt update
apt install apache2 -y
ufw allow 'Apache'
systemctl enable apache2
systemctl restart apache2 
``````

- Er is geen SSH access nodig, wel HTTP
- Subnet: Subnet-1
- Public IP: Enabled    

Controleer of je website bereikbaar is

## Key-terms
[Schrijf hier een lijst met belangrijke termen met eventueel een korte uitleg.]

## Opdracht
### Gebruikte bronnen
- [MS Learn: Azure Virtual Machines](https://learn.microsoft.com/nl-nl/azure/virtual-network/virtual-networks-overview)

### Ervaren problemen
Tijdens het maken van deze opdracht vergeten screenshots te maken, opgelost door de opdracht opnieuw te maken en deze keer niet de screenshots vergeten te maken!

### Resultaat
[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).]
