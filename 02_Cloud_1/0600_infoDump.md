# Theoretische Kennis

## Azure Containers <[MS Learn Overview](https://learn.microsoft.com/nl-nl/azure/containers/)>
Azure Containers verwijst naar de containergerelateerde diensten en tools die worden aangeboden binnen het Microsoft Azure-cloudecosysteem. Containers zijn een vorm van gevirtualiseerde, lichtgewicht applicatieverpakking die het mogelijk maakt om applicaties samen met hun afhankelijkheden te bundelen en uit te voeren op verschillende omgevingen.

Binnen Azure zijn er diverse services gerelateerd aan containers:
- **Azure Kubernetes Service ([AKS](https://learn.microsoft.com/nl-nl/azure/aks/))**: Deze service maakt het mogelijk om containerapplicaties te implementeren, te beheren en te schalen met behulp van Kubernetes, een open-source platform voor containerorchestratie. AKS vereenvoudigt het implementatieproces en beheer van Kubernetes-clusters in Azure.

- **Azure Container Instances ([ACI](https://learn.microsoft.com/nl-nl/azure/container-instances/availability-zones))**: ACI biedt een eenvoudige en snelle manier om containers in Azure uit te voeren zonder het beheer van de onderliggende infrastructuur. Het is een serverloze containerservice waarmee je containers on-demand kunt uitvoeren zonder dat je virtuele machines hoeft te configureren of te beheren.

- **Azure Container Registry ([ACR](https://learn.microsoft.com/nl-nl/azure/container-registry/))**: ACR is een privécontainerregister waar containerimages kunnen worden opgeslagen en beheerd voor Azure-implementaties. Het maakt het mogelijk om Docker-geformatteerde images veilig op te slaan en te beheren, en integreert met andere Azure-services zoals AKS.

- **Azure Container Instances voor Kubernetes**: Deze service biedt een verbinding tussen ACI en AKS, waardoor je ACI kunt gebruiken om containers uit te voeren vanuit AKS.

Containers bieden verschillende voordelen, zoals consistentie tussen ontwikkelings- en productieomgevingen, schaalbaarheid, flexibiliteit en de mogelijkheid om applicaties en hun afhankelijkheden te bundelen. Azure's containerdiensten zijn ontworpen om het implementeren, beheren en schalen van containerapplicaties in een cloudomgeving te vereenvoudigen.

## Azure Support Plans <[MS Compare Support Plans](https://azure.microsoft.com/en-us/support/plans)>
Azure Support Plans zijn service-abonnementen die door Microsoft worden aangeboden om ondersteuning te bieden aan organisaties die Azure-cloudservices gebruiken. Deze plannen zijn bedoeld om klanten te helpen bij het oplossen van problemen, het verkrijgen van technische ondersteuning, en het maximaliseren van de waarde van hun Azure-abonnementen.

Er zijn verschillende niveaus van Azure Support Plans, elk met specifieke functies en mate van ondersteuning:

- **Gratis ondersteuning**: Dit is het basisniveau van ondersteuning dat wordt geleverd bij elk Azure-abonnement. Het omvat toegang tot documentatie, zelfhulpbronnen, communityforums en facturering- en accountbeheerondersteuning.

- **Developer Support**: Dit niveau biedt betaalde ondersteuning voor ontwikkelaars en testomgevingen. Het omvat ook technische ondersteuning via e-mail en heeft een gegarandeerde reactietijd van 12 uur.

- **Standard Support**: Dit is het meest voorkomende ondersteuningsniveau voor productieomgevingen. Het biedt 24/7 technische ondersteuning via telefoon en web, gegarandeerde reactietijden en begeleiding bij probleemoplossing.

- **Professional Direct Support**: Dit is een geavanceerd niveau van ondersteuning dat specifieke aandacht geeft aan bedrijfskritieke situaties. Het biedt directe toegang tot Azure-technische experts, snellere reactietijden en proactieve monitoring.

De Azure Support Plans bieden voordelen zoals technische ondersteuning, snellere responstijden voor kritieke problemen, toegang tot specifieke experts en meer. Klanten kunnen het meest geschikte ondersteuningsniveau kiezen op basis van hun bedrijfsbehoeften en de kritikaliteit van hun Azure-implementaties. De kosten van elk plan variëren afhankelijk van het gekozen niveau en de gewenste dekking.

## Azure Advisor <[MS Learn](https://learn.microsoft.com/nl-nl/azure/advisor/advisor-overview)>
Azure Advisor is een cloudservice van Microsoft Azure die ontworpen is om klanten te helpen bij het optimaliseren van hun Azure-resources voor betere prestaties, kostenbesparingen, beveiliging en betrouwbaarheid. Het is een gepersonaliseerde adviestool die aanbevelingen en best practices biedt op basis van de configuratie en het gebruik van je Azure-services.

Azure Advisor analyseert continu de configuraties en activiteiten binnen je Azure-abonnement en geeft vervolgens aanbevelingen in verschillende categorieën van het Well-Architected framework.

De adviezen van Azure Advisor zijn gebaseerd op bewezen best practices en analyses van de specifieke gebruiksgegevens van jouw Azure-resources. Het doel is om klanten te helpen hun Azure-infrastructuur te optimaliseren en te voldoen aan de vereisten voor kosten, prestaties, beveiliging en beschikbaarheid, wat leidt tot een betere algehele ervaring en efficiënter gebruik van resources.

## Azure App Configuration <[MS Learn](https://learn.microsoft.com/nl-nl/azure/azure-app-configuration/overview)>
Azure App Configuration is een beheerde service die wordt aangeboden binnen Microsoft Azure voor het centraal beheren van applicatie-instellingen en feature flags. Het stelt ontwikkelaars in staat om de configuratie van hun applicaties te beheren op een centrale locatie, waardoor de flexibiliteit en het beheer van de configuratie-instellingen verbeteren.

- **Belangrijke kenmerken**:
Centrale configuratie-opslag: De service biedt een centrale opslagplaats voor verschillende soorten applicatieconfiguraties, zoals sleutel-waardeparen, geheimen, aangepaste instellingen, enzovoort.

- **Dynamische wijzigingen**: Ontwikkelaars kunnen wijzigingen in de configuratie dynamisch doorvoeren zonder dat daarvoor een herstart van de applicatie vereist is. Dit maakt het mogelijk om snel configuratiewijzigingen door te voeren en te reageren op veranderende omstandigheden.

- **Feature flags**: Azure App Configuration ondersteunt het gebruik van feature flags, waardoor ontwikkelaars functionele mogelijkheden binnen een applicatie dynamisch kunnen in- of uitschakelen. Dit stelt teams in staat om geleidelijke implementaties uit te voeren, experimenten uit te voeren en functionaliteiten te testen voordat ze breed worden uitgerold.

- **Versiebeheer**: Het biedt versiebeheer voor configuratie-instellingen, waardoor ontwikkelaars gemakkelijk wijzigingen kunnen traceren, vergelijken en teruggaan naar vorige versies indien nodig.

Door het gebruik van Azure App Configuration kunnen ontwikkelaars en operationele teams gemakkelijker omgaan met configuratiebeheer en het implementeren van wijzigingen in applicatie-instellingen. Het verhoogt de flexibiliteit, maakt snelle iteraties mogelijk en verbetert de beheersbaarheid van applicatieconfiguraties in Azure-gebaseerde applicaties.

## Azure Monitor Logs <[MS Learn](https://learn.microsoft.com/nl-nl/azure/azure-monitor/logs/data-platform-logs)>
Azure Monitor Logs, voorheen bekend als Log Analytics, is een service binnen Azure waarmee je gegevens kunt verzamelen, opslaan en analyseren vanuit verschillende bronnen om inzicht te verkrijgen in de prestaties en de gezondheid van je Azure-resources en applicaties.

Belangrijke aspecten van Azure Monitor Logs zijn:

- **Data Collection**: Het stelt je in staat om loggegevens en metrische gegevens te verzamelen van diverse bronnen zoals Azure-resources, on-premises servers, containers, applicaties, en meer. Deze gegevens worden opgeslagen in een centrale repository.

- **Querying en Analyse**: Azure Monitor Logs biedt een krachtige querytaal, Kusto Query Language (KQL), waarmee je complexe vragen kunt stellen over de verzamelde gegevens. Hiermee kun je gegevens doorzoeken, filteren, analyseren en visualiseren om inzicht te krijgen in trends, problemen te identificeren of rapporten te genereren.

- **Monitoring en Diagnostics**: Het stelt je in staat om dashboards te maken voor monitoring en diagnostiek, waardoor je real-time inzicht krijgt in de prestaties en status van je resources. Je kunt aangepaste waarschuwingen instellen op basis van queryresultaten, zodat je proactief op de hoogte wordt gebracht van afwijkingen of problemen.

- **Integratie met andere Azure-services**: Azure Monitor Logs integreert met andere services binnen Azure, waaronder Azure Monitor, Azure Security Center, en meer, waardoor je een holistisch inzicht krijgt in de gezondheid, prestaties en beveiliging van je Azure-infrastructuur en applicaties.

Door het gebruik van Azure Monitor Logs kunnen gebruikers uitgebreide analyses uitvoeren op grote hoeveelheden gegevens om operationele inzichten te verkrijgen, prestaties te verbeteren, problemen op te lossen en de algehele efficiëntie van Azure-implementaties te verhogen.


# Praktische ervaring 
## Microsoft Entra ID <[MS Learn](https://learn.microsoft.com/nl-nl/entra/verified-id/decentralized-identifier-overview)>
In de huidige wereld worden onze digitale en fysieke levens steeds meer met elkaar verbonden met de apps, services en apparaten die we gebruiken. Deze digitale revolutie heeft een wereld van mogelijkheden geopend, waardoor we verbinding kunnen maken met talloze bedrijven en individuen op manieren die ooit onvoorstelbaar waren.

Deze verhoogde connectiviteit introduceert een groter risico op identiteitsdiefstal en gegevensschendingen. Deze schendingen kunnen een verwoestende impact hebben op ons persoonlijke en professionele leven. Maar er is hoop. Microsoft werkt samen met een diverse community om een gedecentraliseerde identiteitsoplossing te maken waarmee personen de controle krijgen over hun eigen digitale identiteiten, waardoor ze een veilige en persoonlijke manier bieden om identiteitsgegevens te beheren zonder te vertrouwen op gecentraliseerde autoriteiten of intermediairs.

**Hoe werkt gedecentraliseerde identiteit?**    
We hebben een nieuwe vorm van identiteit nodig. We hebben een identiteit nodig die technologieën en standaarden samenbrengt om belangrijke identiteitskenmerken te leveren, zoals zelfeigendom en censuurweerstand. Deze mogelijkheden zijn moeilijk te bereiken met behulp van bestaande systemen.

Om aan deze beloftes te kunnen doen, hebben we een technische basis nodig die bestaat uit zeven belangrijke innovaties. Een belangrijke innovatie is id's die eigendom zijn van de gebruiker, een gebruikersagent voor het beheren van sleutels die zijn gekoppeld aan dergelijke id's en versleutelde, door de gebruiker beheerde gegevensarchieven.  

![DiD System](https://learn.microsoft.com/nl-nl/entra/verified-id/media/decentralized-identifier-overview/microsoft-did-system.png)


## Azure Monitor <[MS Learn](https://learn.microsoft.com/nl-nl/azure/azure-monitor/overview)>
Azure Monitor is een uitgebreide oplossing binnen Microsoft Azure die ontworpen is voor het monitoren en beheren van de prestaties en status van applicaties, infrastructuur, services en netwerken in de cloud, on-premises en hybride omgevingen. Het biedt tools en functies om te helpen bij het verzamelen, analyseren en acteren op gegevens voor proactieve monitoring, foutopsporing en probleemoplossing.

Belangrijke aspecten van Azure Monitor zijn onder andere:

- **Monitoring van resources**: Azure Monitor biedt mogelijkheden om verschillende Azure-resources te monitoren, zoals virtuele machines, databases, opslagaccounts, netwerken, en meer. Het verzamelt metrische gegevens en logboeken van deze resources om hun prestaties en gezondheid te evalueren.

- **Metrische gegevens en logboeken**: Het verzamelt metrische gegevens, waaronder CPU-gebruik, geheugenverbruik, netwerkverkeer en aangepaste metingen, om prestaties te evalueren. Ook verzamelt het logboeken van verschillende bronnen om activiteiten, fouten en waarschuwingen vast te leggen.

- **Krachtige queries en analyses**: Azure Monitor biedt een krachtige querytaal, Kusto Query Language (KQL), waarmee gebruikers gegevens kunnen doorzoeken, filteren, analyseren en visualiseren. Dit stelt hen in staat om inzicht te krijgen in trends, problemen te identificeren en rapporten te genereren.

- **aarschuwingen en acties**: Het stelt gebruikers in staat om waarschuwingen in te stellen op basis van aangepaste drempels of queryresultaten. Hierdoor kunnen ze proactief reageren op afwijkingen of problemen in de gemonitorde resources.

- **Integratie met andere services**: Azure Monitor integreert met andere Azure-services, zoals Azure Log Analytics, Application Insights, Azure Security Center en meer, waardoor gebruikers een uitgebreider inzicht krijgen in de gezondheid, prestaties en beveiliging van hun Azure-implementaties.

Azure Monitor biedt een geïntegreerd platform voor monitoring en beheer, waardoor organisaties de betrouwbaarheid, prestaties en beveiliging van hun cloud- en hybride omgevingen kunnen verbeteren.

## CosmosDB <[MS Learn](https://learn.microsoft.com/nl-nl/azure/cosmos-db/)>
Azure Cosmos DB is een volledig beheerde NoSQL-database service die wordt aangeboden door Microsoft Azure. Het is ontworpen om wereldwijd gedistribueerde applicaties te ondersteunen met een schaalbare en flexibele architectuur.

Belangrijke kenmerken van Azure Cosmos DB zijn onder meer:

- **Multi-model en NoSQL**: Cosmos DB ondersteunt diverse datamodellen zoals documenten, sleutel-waardeparen, grafieken en kolommen. Het biedt ook een schema-agnostische aanpak, waardoor het flexibel is in het opslaan en beheren van gegevens zonder een vaste structuur.

- **Schaalbaarheid**: Het biedt naadloze schaalbaarheid, zowel in termen van opslagcapaciteit als doorvoer (throughput). Hierdoor kan de database eenvoudig worden aangepast aan de behoeften van applicaties en kan het wereldwijd gedistribueerd worden voor snelle en lage-latentie toegang.

- **Global Distribution**: Cosmos DB biedt de mogelijkheid om gegevens wereldwijd te distribueren over meerdere Azure-regio's. Dit zorgt voor een lage latentie en hoge beschikbaarheid voor gebruikers over de hele wereld.

- **Consistentie niveaus**: Het biedt verschillende niveaus van consistentie om tegemoet te komen aan de verschillende vereisten van applicaties, variërend van sterke consistentie tot eventuele consistentie met hoge beschikbaarheid.

- **Ingebouwde beveiliging en naleving**: Cosmos DB biedt ingebouwde beveiligingsfuncties zoals firewall-regels, toegangsbeheer, encryptie van gegevens in rust en in transit, evenals nalevingscertificeringen zoals GDPR, HIPAA, en meer.

Azure Cosmos DB wordt vaak gebruikt voor moderne applicaties die behoefte hebben aan schaalbaarheid, wereldwijde beschikbaarheid, flexibele datamodellering en hoge prestaties. Het biedt ontwikkelaars een krachtige tool om diverse soorten data te beheren en te schalen naar wereldwijde gebruikers.

## Azure Functions <[MS Learn](https://learn.microsoft.com/en-us/azure/azure-functions/)>
Azure Functions is een serverless compute service die wordt aangeboden binnen Microsoft Azure. Het stelt ontwikkelaars in staat om code te schrijven en uit te voeren zonder zich zorgen te hoeven maken over de infrastructuur waarop deze draait. Met Azure Functions kunnen ontwikkelaars gebeurtenisgestuurde stukjes code maken en uitvoeren die reageren op verschillende gebeurtenissen in Azure of externe bronnen.

Belangrijke kenmerken van Azure Functions zijn onder meer:

- **Event-driven computing**: Het stelt ontwikkelaars in staat om code uit te voeren op basis van gebeurtenissen of triggers, zoals het ontvangen van een HTTP-verzoek, een wijziging in een database, een timer, een bericht in een queue, enzovoort.

- **Schaalbaarheid**: Azure Functions schaalt automatisch op en neer op basis van de belasting. Dit betekent dat het alleen resources gebruikt wanneer de code wordt uitgevoerd, waardoor de kosten worden geoptimaliseerd.

- **Ondersteunde programmeertalen**: Het biedt ondersteuning voor verschillende programmeertalen zoals C#, JavaScript, Python en PowerShell, waardoor ontwikkelaars in hun voorkeurstaal kunnen werken.

- **Integratie met Azure-services**: Azure Functions integreert naadloos met andere Azure-services, waardoor ontwikkelaars gemakkelijk functionaliteit kunnen toevoegen aan bestaande Azure-toepassingen of workflows kunnen automatiseren.

- **Snelle ontwikkeling**: Door het serverless model van Azure Functions kunnen ontwikkelaars zich concentreren op het schrijven van code zonder zich bezig te houden met het beheren van infrastructuur, waardoor de ontwikkelingstijd kan worden verkort.

Azure Functions wordt vaak gebruikt voor het maken van kleine, specifieke stukjes code die reageren op gebeurtenissen of taken automatiseren, waardoor ontwikkelaars snel en efficiënt functionaliteit aan applicaties kunnen toevoegen zonder zich druk te hoeven maken over de onderliggende infrastructuur.

## Event Grid <[MS Learn](https://learn.microsoft.com/nl-nl/azure/event-grid/overview)>
Azure Event Grid is een gebeurtenisrouteringsservice binnen Microsoft Azure die het mogelijk maakt om gebeurtenissen te beheren en te routeren tussen verschillende Azure-services, applicaties en externe bronnen. Het fungeert als een centraal platform voor het vastleggen, verwerken en reageren op gebeurtenissen in real-time.

Belangrijke kenmerken van Azure Event Grid zijn onder meer:

- **Gebeurtenispublicatie en -abonnement**: Azure Event Grid maakt gebruik van een publicatie/abonnementmodel. Services kunnen gebeurtenissen publiceren naar het Event Grid, terwijl andere services zich kunnen abonneren op specifieke gebeurtenissen die ze willen ontvangen en verwerken.

- **Verscheidenheid aan bronnen en doelen**: Het ondersteunt een breed scala aan bronnen die gebeurtenissen kunnen genereren, zoals Azure-services, aangepaste toepassingen, IoT-apparaten en externe services. Evenzo kunnen gebeurtenissen worden afgeleverd bij verschillende doelen zoals Azure Functions, Logic Apps, Service Bus, webhooks, etc.

- **Flexibele routing en filtering**: Event Grid biedt flexibele routing van gebeurtenissen op basis van filters, zodat alleen relevante gebeurtenissen worden afgeleverd bij de geabonneerde services. Dit minimaliseert de overhead en zorgt voor efficiëntere verwerking.

- **Schaalbaarheid en betrouwbaarheid**: Het is schaalbaar en betrouwbaar, waarbij het automatisch kan reageren op pieken in gebeurtenisvolumes en hoge beschikbaarheid biedt voor het verwerken van gebeurtenissen.

- **Real-time verwerking**: Door gebeurtenissen in bijna real-time af te leveren, stelt Event Grid gebruikers in staat om snel te reageren op gebeurtenissen en workflows te automatiseren op basis van deze gebeurtenissen.

Azure Event Grid wordt vaak gebruikt voor het bouwen van reactieve, event-driven architecturen waarin gebeurtenissen en acties worden gekoppeld tussen verschillende services en systemen binnen Azure en ook daarbuiten. Het maakt een flexibele en schaalbare communicatie mogelijk tussen verschillende componenten van gedistribueerde systemen.

## Queue Storage <[MS Learn](https://learn.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction)>
Queue Storage is een dienst binnen Microsoft Azure die het mogelijk maakt om berichten in wachtrijen op te slaan. Het is een onderdeel van Azure Storage en biedt een schaalbare, betrouwbare en gedistribueerde wachtrijoplossing die wordt gebruikt voor het verzenden van berichten tussen verschillende delen van een applicatie of tussen verschillende services.

Belangrijke kenmerken van Queue Storage zijn:

- **Berichtenwachtrijen**: Het stelt ontwikkelaars in staat om berichten in een wachtrij op te slaan, waarbij elk bericht kan worden verwerkt door een ontvanger (consumer). Dit kan worden gebruikt om taken te verdelen tussen verschillende delen van een applicatie of om communicatie tussen verschillende services te vergemakkelijken.

- **FIFO (First-In-First-Out)**: Queue Storage garandeert een "First-In-First-Out" (FIFO) volgorde van berichtverwerking, wat betekent dat berichten in de wachtrij worden verwerkt in de volgorde waarin ze zijn geplaatst.

- **Schaalbaarheid**: Het biedt schaalbaarheid en hoge beschikbaarheid, waarbij het automatisch reageert op de vraag naar wachtrijcapaciteit en het ondersteunen van een groot aantal gelijktijdige operaties.

- **Asynchrone communicatie**: Het ondersteunt asynchrone communicatie tussen delen van een applicatie, waardoor verschillende onderdelen onafhankelijk van elkaar kunnen werken zonder te wachten op directe reacties.

- **Geïntegreerd met andere Azure-services**: Queue Storage kan naadloos worden geïntegreerd met andere Azure-services zoals Azure Functions, WebJobs, Logic Apps en meer, waardoor het een integraal onderdeel is van oplossingen voor berichtverwerking en workflowautomatisering.

Queue Storage wordt vaak gebruikt voor taakverdeling, achtergrondverwerking, communicatie tussen microservices, verwerking van gegevensstromen en voor het opzetten van asynchrone communicatie tussen verschillende onderdelen van een applicatie of systeem in Azure.

## Service Bus <[MS Learn](https://learn.microsoft.com/nl-nl/azure/service-bus-messaging/service-bus-messaging-overview)>
Azure Service Bus is een volledig beheerde berichtenbrokeringservice die wordt aangeboden binnen Microsoft Azure. Het biedt een betrouwbare en flexibele oplossing voor het verzenden, ontvangen en verwerken van berichten tussen applicaties en services, zowel binnen Azure als daarbuiten.

Belangrijke kenmerken van Azure Service Bus zijn onder meer:

- **Message Queues**: Service Bus biedt ondersteuning voor berichtenwachtrijen waarin berichten kunnen worden geplaatst om te worden verwerkt door verschillende ontvangers. Het garandeert de juiste volgorde van berichtverwerking (FIFO) en biedt betrouwbaarheid bij het afleveren van berichten.

- **Topics en Subscriptions**: Het biedt geavanceerde berichtenpublicatie via onderwerpen en abonnementen. Berichten kunnen worden gepubliceerd naar een onderwerp en vervolgens door abonnees worden gefilterd en ontvangen op basis van bepaalde criteria, waardoor geavanceerde bericht-routing en -distributie mogelijk is.

- **Asynchrone communicatie**: Service Bus maakt asynchrone communicatie tussen verschillende delen van applicaties mogelijk, waardoor services onafhankelijk van elkaar kunnen werken en berichten op hun eigen tempo kunnen verwerken.

- **Betrouwbaarheid en Schaalbaarheid**: Het is schaalbaar en biedt hoge beschikbaarheid met functies voor automatische foutafhandeling, retries en opslag van berichten.

- **Beveiliging en Integratie**: Service Bus biedt mogelijkheden voor autorisatie, authenticatie en encryptie om gegevensbeveiliging te waarborgen. Het kan naadloos worden geïntegreerd met andere Azure-services en on-premises systemen.

Azure Service Bus wordt vaak gebruikt in verschillende scenario's, zoals gedistribueerde systemen, microservices-architecturen, inter-applicatiecommunicatie, gegevensintegratie en het bouwen van schaalbare en betrouwbare bedrijfsapplicaties waarin berichten en gebeurtenissen worden uitgewisseld tussen verschillende services en systemen.