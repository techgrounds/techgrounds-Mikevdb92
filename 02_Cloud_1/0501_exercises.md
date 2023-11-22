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

### Plan van aanpak
Deze opdracht heb ik uitgesplitst in 4 opdrachten. De eerste 3 opdrachten behandelen elk onderwerp individueel 
- Azure Files 
- SQL Databases 
- Azure App Service 

De laatste opdracht is een combinatie van alle 3 de onderwerpen.

### Azure File: Shared Drive on Windows
#### Omschrijving
Maak een nieuwe virtuele disk aan voor je eigen OS en zet hierop een bestand. Open dit bestand vervolgens via de cloud en download dit bestand ter controle.

#### Bronnen
- [Youtube Azure File Share in windows](https://www.youtube.com/watch?v=bmRZi9iGsK0)
- [Mapping Azure file on Windows](https://www.petervanderwoude.nl/post/mapping-azure-file-shares-on-windows-devices/)
- [Port Status Check Windows](https://github.com/Azure-Samples/azure-files-samples/tree/master/AzFileDiagnostics/Windows)

#### Errors

#### Sources
Gebruikte bronnen voor opdracht
#### >> GIMME A TITLE .... << (Uitwerking)




### Azure SQL Database: Building and Managing
*Disclaimer: Exercise generated with ChatGPT 3.5* 
To create an Azure SQL Database instance, design a database schema, perform CRUD operations, implement security measures, and monitor performance.

#### Steps:
1. Azure SQL Database Creation
    - Create an Azure SQL Database instance through the Azure portal.
    - Choose appropriate configuration settings including pricing tier, compute, and storage capacity based on workload requirements.
2. Database Schema Design
    - Define a database schema suited for a specific scenario (e.g., e-commerce, social media) including tables, relationships, indexes, and constraints.
    - Populate the database with sample data relevant to the scenario.
3. CRUD Operations and Querying
    - Use Azure Data Studio, SQL Server Management Studio, or Azure portal Query Editor to execute CRUD operations (Create, Read, Update, Delete) on the database.
    - Demonstrate SELECT, INSERT, UPDATE, DELETE queries to interact with the data.
4. Implementing Security Measures
    - Set up firewall rules and configure access control to allow connections from specific IP addresses or Azure services.
    - Implement database-level and row-level security measures (e.g., user roles, permissions) to control access to data.
5. Performance Tuning and Optimization
    - Monitor query performance using tools like Query Performance Insight in Azure portal or SQL Server Profiler.
    - Optimize queries, indexes, and database settings to improve performance.
    - Discuss and apply techniques for improving query performance (e.g., indexing strategies, query optimization).
6. Backup, Restore, and Disaster Recovery
    - Configure automated backups and retention policies for the Azure SQL Database.
    - Perform a database backup and restore operation to demonstrate recovery procedures.
    - Discuss disaster recovery options available for Azure SQL Database (point-in-time restore, geo-replication).

#### Errors

#### Sources
Gebruikte bronnen voor opdracht

#### Uitwerking


### Azure App Service: Deploying and Managing Web Applications
*Disclaimer: Exercise generated with ChatGPT 3.5*  
To create, deploy, and manage a web application using Azure App Service, configure settings, monitor performance, and explore deployment slots.

#### Steps:
1. Azure App Service Creation
    - Create an Azure App Service instance through the Azure portal.

    - Select appropriate configuration settings, including the app service plan (pricing tier, scale), runtime stack (e.g., .NET, Node.js), and deployment method (code or container
2. Web Application Deployment
    - Deploy a sample web application or use a pre-existing web app to publish to Azure App Service.
    - Explore different deployment methods (e.g., Azure DevOps, GitHub Actions, Azure CLI) for deploying applications to the App Service.
3. Configuration and Settings
    - Configure application settings, environment variables, and connection strings within the Azure App Service.
    - Explore configuration options for custom domains, SSL certificates, and traffic routing.
4. Scaling and Autoscaling
    - Demonstrate scaling options for the Azure App Service, such as scaling up/down (changing the pricing tier) and configuring autoscaling based on performance metrics.
    - Discuss load balancing and how Azure App Service handles increased traffic.
5. Deployment Slots and Testing
    - Set up deployment slots within Azure App Service.
    - Deploy a new version of the web application to a staging slot, test functionality, and swap it with the production slot to demonstrate zero-downtime deployments.
6. Monitoring and Diagnostics
    - Use Azure Application Insights or built-in monitoring tools to track performance metrics (response time, request rates, etc.) of the web application.
    - Set up logging and diagnostics to troubleshoot issues and analyze application behavior.
7. Continuous Integration/Continuous Deployment (CI/CD)
    - Implement a basic CI/CD pipeline using Azure DevOps or GitHub Actions to automate the deployment process when changes are committed to the repository.
    - Trigger a deployment and observe the automated deployment workflow.
8. Security and Access Control
    - Discuss and apply security best practices for Azure App Service, including enabling authentication, authorization, and securing sensitive information.
    - Implement role-based access control (RBAC) for restricting access to specific features within the App Service.    

**Note**
Encourage participants to actively deploy, configure, and manage a web application within Azure App Service. Emphasize the importance of scalability, continuous deployment, monitoring, and security practices in maintaining a reliable and secure web application. Adjust the complexity of tasks based on participants' familiarity with app deployment and Azure services.

#### Errors

#### Sources
Gebruikte bronnen voor opdracht
#### Uitwerking


### Dynamic hands-on: Building a Scalable Web Application with Azure Services
*Disclaimer: Exercise generated with ChatGPT 3.5*   
To create a web application that stores user data in Azure SQL Database, utilizes Azure Files for file storage, and deploys the application using Azure App Service. 

Optionally, implement CDN for content delivery and configure DNS for custom domain mapping.

#### Steps: 
1. Azure SQL Database Setup
    - Create an Azure SQL Database instance using the Azure portal.
    - Define a database schema to store user-related information (e.g., user profiles, preferences).
2. Azure Files Configuration
    - Set up Azure Files to store static files or documents related to the application (e.g., images, documents).
    - Configure appropriate access controls and permissions for file storage.
3. Developing the Web Application
    - Create a web application (using a programming language of your choice) that connects to the Azure SQL Database to perform CRUD (Create, Read, Update, Delete) operations on user data.
    - Implement functionalities to utilize Azure Files for file upload/download operations within the application.
4. Azure App Service Deployment
    - Set up an Azure App Service to host the developed web application.
    - Deploy the application to the Azure App Service instance.
5. CDN Integration (Optional)
    - If desired, configure Azure CDN to cache and deliver static content (e.g., images, CSS, JavaScript) used by the web application.
    - Connect the CDN to the Azure Files storage or the App Service for content delivery.
6. DNS Configuration (Optional)
    - Set up a custom domain for your web application using Azure DNS.
    - Configure the DNS records to map the custom domain to the Azure App Service URL.
7. Testing and Validation
    - Test the functionality of the web application, ensuring proper integration with Azure SQL Database for data storage and Azure Files for file storage.
    - Validate CDN integration for optimized content delivery (if implemented).
    - Check the custom domain setup (if applicable) to ensure the application works with the custom domain.
8. *Scaling and Performance Tuning (Optional)*
    - Explore scaling options within Azure App Service to accommodate increased traffic or load demands.
    - Optimize the database and storage configurations for better performance.

**Note:**   
Ensure proper security measures are implemented throughout the exercise, such as encryption for data at rest and in transit, using Azure Key Vault for managing secrets, and implementing secure coding practices in the web application.

This exercise integrates multiple Azure services to build a scalable and functional web application while considering optional services like CDN and DNS for enhanced performance and custom domain mapping. Adjustments can be made based on the specific skill level and requirements of the participants.

#### Errors
Korte beschrijving tegengekomen problemen (Error:"..." Fix:"...") Screenshots indien beschikbaar

#### Sources
Gebruikte bronnen voor opdracht
#### Uitwerking
