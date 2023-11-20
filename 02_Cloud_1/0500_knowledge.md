# Beeep..

## ALB & Auto Scaling
Een van de grootste voordelen van de cloud is dat je niet hoeft te gokken hoeveel capaciteit je nodig hebt. Je kan altijd up en down schalen met on-demand services. Een van de services die dit mogelijk maakt heet Autoscaling.

Wanneer je applicaties runt met een spiky workload, kan je een VM Scale Set aanmaken in plaats van een enkele server. Wanneer de vraag naar de applicatie hoog is, kan Autoscaling automatisch VMs toevoegen aan je Scale Set. Wanneer de vraag omlaag gaat, kan het ook weer instances verwijderen.

Om er zeker van te zijn dat alle VMs hetzelfde zijn, moet je een image aanwijzen tijdens het configureren van een VM Scale Set. Je kan deze image later aanpassen met de reimage optie. Auto Scaling maakt gebruik van Azure Monitor om te bepalen of er VMs toegevoegd of verwijderd moeten worden.

In een traditionele architectuur maakt een client verbinding met een enkele server met een enkel publiek IP-adres. Wanneer je een fleet van servers hebt, werkt dit niet meer. Daarom kan je een load balancer gebruiken als endpoint voor de client. De load balancer zal de request forwarden naar een van de servers in je fleet en het antwoord terugsturen naar de client.

Azure heeft twee managed oplossingen voor load balancing naar een fleet van servers:
- Azure Load Balancer: Je krijgt deze gratis bij een VM Scale Set. De ALB werkt op laag 4 van de OSI stack (TCP/UDP). Een ALB kan alleen routeren naar Azure resources.
- Application Gateway: Deze load balancer werkt op laag 7 van de OSI stack (HTTP/HTTPS). Ook heeft het support voor onder andere SSL termination en Web Application Firewall (WAF) features. Een Application Gateway kan routeren naar elk routable IP address.

## Well Architected Framework
De Cloud Providers hebben er baat bij dat hun klanten goede, veilige applicaties op de infrastructuur van de provider draaien. Om klanten een leidraad te geven hoe een goede, veilige applicatie eruit ziet is het Well-Architected Framework in het leven geroepen.

Het Well-Architected Framework van Azure en AWS lijken veel op elkaar. Ze zijn gebaseerd op bijna dezelfde ‘pilaren’, namelijk:

- Reliability
- Security
- Cost Optimization
- Operational Excellence
- Performance Efficiency

Een ezelsbruggetje om deze pilaren te kunnen onthouden is ook wel CROPS.
Elke pilaar gaat in op een aspect van je applicatie, en hoe de Cloud kan helpen deze te optimaliseren.

Jij moet als cloud engineer met deze Well-Architected Framework een applicatie kunnen bouwen die optimaal gebruik maakt van de mogelijkheden in de Cloud.

## Azure Files, App Service, CDN, DNS, SQL
Vanaf dit moment zal je minder concrete opdrachten krijgen. We doen nog meer een beroep op je zelfstandige leervaardigheden. Geen zorgen, je bent niet alleen. Je hebt elkaar en de vaste structuur blijft bestaan waarin je iedereen nog altijd de oren van het hoofd kan vragen.

Sommige services hoef je alleen theoretisch te kennen. Andere moet je minimaal een keer aangezet en geconfigureerd hebben. Per onderwerp staat beschreven of het een theoretisch of praktisch onderwerp is.

Handige vragen die je in gedachten kan (/moet) houden tijdens je onderzoek naar de onderwerpen:

- Welk probleem lost X op?
- Welke key termen horen bij X?
- Hoe past X / vervangt X in een on-premises setting?
- Hoe kan ik X combineren met andere diensten?
- Wat is het verschil tussen X en andere gelijksoortige diensten?

Een handige lijst van taken die je praktisch moet kunnen:

- Waar kan ik deze dienst vinden in de console?
- Hoe zet ik deze dienst aan?
- Hoe kan ik deze dienst koppelen aan andere resources?

## Compute Services
Bron: [Episode 9: Compute Services](https://marczak.io/az-900/episode-09/cheat-sheet/)  
[Youtube Episode 9](https://youtu.be/inaXkN2UrFE)

### Virtualization
- Emulation of physical machines
- Different virtual hardware configuration per machine/app
- Different operating systems per machine/app
- Total separation of environments
    * file systems
    * services
    * ports
    * middleware,
    * configuration

### Virtual Machines
- Infrastructure as a Service (IaaS)
- Total control over the operating system and the software
- Supports marketplace and custom images
- Best suited for
    * Custom software requiring custom system configuration
    * Lift-and-shift scenarios
- Can run any application/scenario
    * web apps & web services,
    * databases,
    * desktop applications,
    * jumpboxes,
    * gateways, etc.

### Virtual Machine Scale Sets
- Infrastructure as a Service (IaaS)
- Set of identical virtual machines
- Built-in auto scaling features
- Designed for manual and auto-scaled workloads like web services,* batch processing, etc.

### Containers
- Use host’s operating system
- Emulate operating system (VMs emulate hardware)
- Lightweight (no O/S)
    * Development Effort
    * Maintenance
    * Compute & storage requirements
- Respond quicker to demand changes
- Designed for almost any scenario

### Azure Container Instances
- Simplest and fastest way to run a container in Azure
- Platform as a Service
- Serverless Containers
- Designed for
    * Small and simple web apps/services
    * Background jobs
    * Scheduled scripts

### Azure Kubernetes Service (AKS)
- Open-source container orchestration platform
- Platform as a Service
- Highly scalable and customizable
- Designed for high scale container deployments (anything really!)

### App Service
- Designed as enterprise grade web application service
- Platform as a Service
- Supports multiple programming languages and containers

### Azure Functions (Function Apps)
- Platform as a Service
- Serverless
- Two hosting/pricing models
    * Consumption-based plan
    * Dedicated plan
- Designed for micro/nano-services

### Summary
- Virtual Machines (IaaS) - Custom software, custom requirements, very specialized, high degree of control
- VM Scale Sets (IaaS) - Auto-scaled workloads for VMs
- Container Instances (PaaS) - Simple container hosting, easy to start
- Kubernetes Service (PaaS) - Highly scalable and customizable * container hosting platform
- App Services (PaaS) - Web applications, a lot of enterprise web * hosting features, easy to start
- Functions (PaaS) (Function as a Service) (Serverless) - micro/nano-services, excellent consumption-based pricing, easy to start

## Networking Services
Bron: [Episode 10: Networking services](https://marczak.io/az-900/episode-10/cheat-sheet/)  
[Youtube Episode 10](https//youtu.be/5NMcM4zJPM4)

### Azure Networking
- Connect cloud and on-premises
- On-premise networking functionality

### Azure Virtual Network
- Logically isolated networking components
- Segmented into one or more subnets
- Subnets are discrete sections
- Enable communication of resources with each-other, internet and on-premises
- Scoped to a single region
- VNet peering allow cross region communication
- Isolation, Segmentation, Communication, Filtering, Routing

### Azure [Load Balancer](https://youtu.be/T7XU6Lz8lJw)
- Even traffic distribution
- Supports both inbound and outbound scenarios
- High-availability scenarios
- Both TCP (transmission control protocol) and UDP (user datagram protocol) applications
- Internal and External traffic
- Port Forwarding
- High scale with up to millions of flows

### VPN Gateway
- Specific type of virtual network gateway for on-premises to azure traffic over the public internet

### Application Gateway
- Web traffic load balancer
- Web application firewall
- Redirection
- Session affinity
- URL Routing
- SSL termination

### Content Delivery Network
- Define content
- Minimize latency
- POP (points of presence) with many locations

## Well Architected Framework
The 5 pillars of Azure well-architected framework are as follows aka CROPS:
- **C**ost optimization
- **R**eliability
- **O**perational excellence
- **P**erformance efficiency
- **S**ecurity  

The 5 Pillars of Azure Well-Architected Framework provides architectural best practices to execute a workload or applications without any bottlenecks and faults with efficiency.
These Five pillars of architecture have been designed by experts after gaining insight from thousands of scenarios and implementing these frameworks in your architecture will help you design stable and efficient systems.

**Verdere informatie:** 
* [k21academy](https://k21academy.com/microsoft-azure/data-engineer/5-pillars-of-azure-well-architected-framework/)
* [Azure Well Architected Framework](https://learn.microsoft.com/en-us/azure/well-architected/)

## Database Services 
Bron: [Episode 12: Database Services](https://youtu.be/RqD4nMyBazU)

### Data Types
- Structured - Data that can be represented using tables with very strict schema. Each row must follow defined schema. Some tables have defined relationships between them. Typically used in relational databases.
- Semi-structured - Data that can be represented using tables but without strict defined schema. Rows must only have unique key identifier.
- Unstructured - Any files in any format. Like binary files, application files, images, movies, etc.
### Cosmos DB
- Globally distributed NoSQL (semi-structured data) Database service
- Schema-less
- Multiple APIs (SQL, MongoDB, Cassandra, Gremlin, Table Storage)
- Designed for
    * Highly responsive (real time) applications with super low latency responses <10ms
    * Multi-regional applications
### SQL Database
- Relational database service in the cloud (PaaS) (DBaaS - Database as a Service)
- Structured data service defined using schema and relationships
R- ich Query Capabilities (SQL)
- High-performance, reliable, fully managed and secure database for building - applications
### Azure SQL product family
- Azure SQL Database – Reliable relational database based on SQL Server
- Azure Database for MySQL – Azure SQL version for MySQL database engine
- Azure Database for PostgreSQL – Azure SQL version for PostgreSQL database engine
- Azure SQL Managed Instance – Fully fledged SQL Server managed by cloud provider
- Azure SQL on VM – Fully fledged SQL Server on IaaS
- Azure SQL DW (Synapse) – Massively Parallel Processing (MPP) version of SQL Server

### Study Guide
- [Microsoft Azure: Microsoft Learn: Databases]()
- [](https://k21academy.com/microsoft-azure/data-engineer/5-pillars-of-azure-well-architected-framework/)
- []()