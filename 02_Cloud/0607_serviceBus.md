# Service Bus <[MS Learn](https://learn.microsoft.com/nl-nl/azure/service-bus-messaging/service-bus-messaging-overview)>
Azure Service Bus is een volledig beheerde berichtenbrokeringservice die wordt aangeboden binnen Microsoft Azure. Het biedt een betrouwbare en flexibele oplossing voor het verzenden, ontvangen en verwerken van berichten tussen applicaties en services, zowel binnen Azure als daarbuiten.

Belangrijke kenmerken van Azure Service Bus zijn onder meer:

- **Message Queues**: Service Bus biedt ondersteuning voor berichtenwachtrijen waarin berichten kunnen worden geplaatst om te worden verwerkt door verschillende ontvangers. Het garandeert de juiste volgorde van berichtverwerking (FIFO) en biedt betrouwbaarheid bij het afleveren van berichten.

- **Topics en Subscriptions**: Het biedt geavanceerde berichtenpublicatie via onderwerpen en abonnementen. Berichten kunnen worden gepubliceerd naar een onderwerp en vervolgens door abonnees worden gefilterd en ontvangen op basis van bepaalde criteria, waardoor geavanceerde bericht-routing en -distributie mogelijk is.

- **Asynchrone communicatie**: Service Bus maakt asynchrone communicatie tussen verschillende delen van applicaties mogelijk, waardoor services onafhankelijk van elkaar kunnen werken en berichten op hun eigen tempo kunnen verwerken.

- **Betrouwbaarheid en Schaalbaarheid**: Het is schaalbaar en biedt hoge beschikbaarheid met functies voor automatische foutafhandeling, retries en opslag van berichten.

- **Beveiliging en Integratie**: Service Bus biedt mogelijkheden voor autorisatie, authenticatie en encryptie om gegevensbeveiliging te waarborgen. Het kan naadloos worden geïntegreerd met andere Azure-services en on-premises systemen.

Azure Service Bus wordt vaak gebruikt in verschillende scenario's, zoals gedistribueerde systemen, microservices-architecturen, inter-applicatiecommunicatie, gegevensintegratie en het bouwen van schaalbare en betrouwbare bedrijfsapplicaties waarin berichten en gebeurtenissen worden uitgewisseld tussen verschillende services en systemen.


# Know-How Theorie
### Welk probleem lost Service Bus op?
Azure Service Bus is een volledig beheerde enterprise-berichtenbroker met berichtenwachtrijen en onderwerpen over publiceren/abonneren (in een naamruimte). Service Bus wordt gebruikt om toepassingen en services van elkaar los te koppelen.

### Welke key termen horen bij Service?


### Hoe past Service Bus / vervangt Service Bus in een on-premises setting?
Azure Event Grid kan worden gebruikt in on-premises omgevingen om klanten te helpen bij het optimaliseren van lokale hardware en software. Azure Queue Storage en Azure Service Bus kunnen ook worden gebruikt in cloudomgevingen zoals Azure om klanten te helpen bij het optimaliseren van virtuele machines of Kubernetes-clusters.

### Hoe kan ik Service Bus combineren met andere diensten?
Service Bus is volledig geïntegreerd met veel Microsoft- en Azure-services, bijvoorbeeld:

- Event Grid
- Logic-apps
- Azure Functions
- Power Platform
- Dynamics 365
- Azure Stream Analytics
Voor de integratie per onderdeel is er een learn.microsoft pagina beschikbaar. [Intergratie MSLearn](https://learn.microsoft.com/nl-nl/azure/service-bus-messaging/service-bus-messaging-overview#integration)

### Wat is het verschil tussen Service Bus en andere gelijksoortige diensten?


## Know-How Praktijk
### Waar kan ik deze dienst vinden in de console?
Deze dienst is te vinden via de zoekfunctie

### Hoe zet ik deze dienst aan?


### Hoe kan ik deze dienst koppelen aan andere resources?
[Intergratie MSLearn](https://learn.microsoft.com/nl-nl/azure/service-bus-messaging/service-bus-messaging-overview#integration)

## Bronnen
[MS Learn](https://learn.microsoft.com/nl-nl/azure/service-bus-messaging/service-bus-messaging-overview)