# Queue Storage <[MS Learn](https://learn.microsoft.com/nl-nl/azure/storage/queues/storage-queues-introduction)>
Queue Storage is een dienst binnen Microsoft Azure die het mogelijk maakt om berichten in wachtrijen op te slaan. Het is een onderdeel van Azure Storage en biedt een schaalbare, betrouwbare en gedistribueerde wachtrijoplossing die wordt gebruikt voor het verzenden van berichten tussen verschillende delen van een applicatie of tussen verschillende services.

Belangrijke kenmerken van Queue Storage zijn:

- **Berichtenwachtrijen**: Het stelt ontwikkelaars in staat om berichten in een wachtrij op te slaan, waarbij elk bericht kan worden verwerkt door een ontvanger (consumer). Dit kan worden gebruikt om taken te verdelen tussen verschillende delen van een applicatie of om communicatie tussen verschillende services te vergemakkelijken.

- **FIFO (First-In-First-Out)**: Queue Storage garandeert een "First-In-First-Out" (FIFO) volgorde van berichtverwerking, wat betekent dat berichten in de wachtrij worden verwerkt in de volgorde waarin ze zijn geplaatst.

- **Schaalbaarheid**: Het biedt schaalbaarheid en hoge beschikbaarheid, waarbij het automatisch reageert op de vraag naar wachtrijcapaciteit en het ondersteunen van een groot aantal gelijktijdige operaties.

- **Asynchrone communicatie**: Het ondersteunt asynchrone communicatie tussen delen van een applicatie, waardoor verschillende onderdelen onafhankelijk van elkaar kunnen werken zonder te wachten op directe reacties.

- **Geïntegreerd met andere Azure-services**: Queue Storage kan naadloos worden geïntegreerd met andere Azure-services zoals Azure Functions, WebJobs, Logic Apps en meer, waardoor het een integraal onderdeel is van oplossingen voor berichtverwerking en workflowautomatisering.

Queue Storage wordt vaak gebruikt voor taakverdeling, achtergrondverwerking, communicatie tussen microservices, verwerking van gegevensstromen en voor het opzetten van asynchrone communicatie tussen verschillende onderdelen van een applicatie of systeem in Azure.


# Know-How Theorie
### Welk probleem lost Queue StorageX op?
Azure Queue Storage is een service voor het opslaan van berichten die worden gebruikt om berichten tussen toepassingen te verzenden.

### Welke key termen horen bij Queue Storage?


### Hoe past Queue Storage / vervangt Queue Storage in een on-premises setting?
Azure Event Grid kan worden gebruikt in on-premises omgevingen om klanten te helpen bij het optimaliseren van lokale hardware en software. Azure Queue Storage en Azure Service Bus kunnen ook worden gebruikt in cloudomgevingen zoals Azure om klanten te helpen bij het optimaliseren van virtuele machines of Kubernetes-clusters.

### Hoe kan ik Queue Storage combineren met andere diensten?
Met Azure Functions kunnen triggers gemaakt worden, Azure Event Grid kan reageren op de wijzingen in de wachtrij en een Azure Service Bus kan met Queue Storage gecombineerd worden voor een meer geavanceerde messaging systeem, waarmee bepaalde taken verdeeld kunnen worden tussen beide resources.

### Wat is het verschil tussen Queue Storage en andere gelijksoortige diensten?
Deze resource is specifiek voor Azure gemaakt.

## Know-How Praktijk
### Waar kan ik deze dienst vinden in de console?
In een storage account is Queue-service te vinden waar een wachtrij aangemaakt kan worden.

### Hoe zet ik deze dienst aan?
Onder storage account bij queue-service bevindt zich de create knop voor een wachtrij.

### Hoe kan ik deze dienst koppelen aan andere resources?


## Bronnen
[MS Learn](https://learn.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction)