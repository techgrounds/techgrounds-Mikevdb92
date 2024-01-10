# Azure Containers <[MS Learn Overview](https://learn.microsoft.com/nl-nl/azure/containers/)>
Azure Containers verwijst naar de containergerelateerde diensten en tools die worden aangeboden binnen het Microsoft Azure-cloudecosysteem. Containers zijn een vorm van gevirtualiseerde, lichtgewicht applicatieverpakking die het mogelijk maakt om applicaties samen met hun afhankelijkheden te bundelen en uit te voeren op verschillende omgevingen.

Binnen Azure zijn er diverse services gerelateerd aan containers:
- **Azure Kubernetes Service ([AKS](https://learn.microsoft.com/nl-nl/azure/aks/))**: Deze service maakt het mogelijk om containerapplicaties te implementeren, te beheren en te schalen met behulp van Kubernetes, een open-source platform voor containerorchestratie. AKS vereenvoudigt het implementatieproces en beheer van Kubernetes-clusters in Azure.

- **Azure Container Instances ([ACI](https://learn.microsoft.com/nl-nl/azure/container-instances/availability-zones))**: ACI biedt een eenvoudige en snelle manier om containers in Azure uit te voeren zonder het beheer van de onderliggende infrastructuur. Het is een serverloze containerservice waarmee je containers on-demand kunt uitvoeren zonder dat je virtuele machines hoeft te configureren of te beheren.

- **Azure Container Registry ([ACR](https://learn.microsoft.com/nl-nl/azure/container-registry/))**: ACR is een privécontainerregister waar containerimages kunnen worden opgeslagen en beheerd voor Azure-implementaties. Het maakt het mogelijk om Docker-geformatteerde images veilig op te slaan en te beheren, en integreert met andere Azure-services zoals AKS.

- **Azure Container Instances voor Kubernetes**: Deze service biedt een verbinding tussen ACI en AKS, waardoor je ACI kunt gebruiken om containers uit te voeren vanuit AKS.

Containers bieden verschillende voordelen, zoals consistentie tussen ontwikkelings- en productieomgevingen, schaalbaarheid, flexibiliteit en de mogelijkheid om applicaties en hun afhankelijkheden te bundelen. Azure's containerdiensten zijn ontworpen om het implementeren, beheren en schalen van containerapplicaties in een cloudomgeving te vereenvoudigen.

# Know-How Theorie
### Welk probleem lost Azure Containers op?
Azure Containers biedt oplossingen voor verschillende uitdagingen met betrekking tot het implementeren, beheren en schalen van containergebaseerde applicaties in de cloud. Enkele problemen die Azure Containers aanpakt zijn:

-  **Applicatieontwikkeling en implementatievereenvoudiging**: Azure Containers, met behulp van services zoals Azure Kubernetes Service (AKS) en Azure Container Instances (ACI), vereenvoudigt de ontwikkeling, implementatie en het beheer van containergebaseerde applicaties. Het biedt een consistente omgeving voor het bouwen en implementeren van applicaties, ongeacht de onderliggende infrastructuur.

- **Schaalbaarheid en flexibiliteit**: Containers stellen ontwikkelaars in staat om applicaties modulair te bouwen en te verdelen in microservices. Hierdoor kunnen deze onafhankelijk van elkaar worden geschaald, wat flexibiliteit biedt bij het reageren op veranderende workloads.

- **Portabiliteit en consistentie**: Azure Containers maken gebruik van gestandaardiseerde containerformaten zoals Docker, waardoor applicaties draagbaar zijn tussen verschillende omgevingen, zoals lokale ontwikkeling, testen en productie in de cloud.

- **Resource-optimalisatie**: Door het gebruik van containers kunnen resources efficiënter worden gebruikt. Containers delen gemeenschappelijke onderdelen van het besturingssysteem, waardoor er minder overhead is in vergelijking met traditionele virtualisatie.

- **Orkestratie en beheer**: Azure Kubernetes Service (AKS) biedt krachtige mogelijkheden voor orkestratie en beheer van containergebaseerde applicaties. Het automatiseert taken zoals het implementeren, schalen en beheren van containers, waardoor het beheer van complexe applicaties vereenvoudigd wordt.

Kort samengevat lost Azure Containers problemen op die te maken hebben met applicatieontwikkeling, implementatie, schaalbaarheid, flexibiliteit, consistentie, resource-optimalisatie en geavanceerd beheer van containergebaseerde workloads in de cloud.

### Welke key termen horen bij Azure Containers?
--

### Hoe past Azure Containers / vervangt Azure Containers in een on-premises setting?
hybrid cloud (Azure Stack)

### Hoe kan ik Azure Containers combineren met andere diensten?
Een aantal diensten van azure containers hebben andere diensten nodig zoals azure storage om deployed te worden. Ook is het mogelijk om Azure Monitor in te schakelen voor elke container functie voor analyses en dergelijke.

### Wat is het verschil tussen Azure Containers en andere gelijksoortige diensten?
Gelijksoortige diensten voor Azure Containers zijn diensten van andere cloudproviders. Azure Containers is één van de bouwstenen van de Azure-infrastuctuur, er zijn wel verschillende mogelijkheden met Azure containers zoals eerder al genoemd zijn.


## Bronnen
[MS Learn Overview](https://learn.microsoft.com/nl-nl/azure/containers/)