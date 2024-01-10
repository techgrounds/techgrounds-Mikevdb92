# [Detection, Response, Analysis]
Geef de RPO en de RTO van de volgende 2 cases:
- A Company makes daily backups of their database. The database is automatically recovered when a failure happens using the most recent available backup. The recovery happens on a different physical machine than the original database, and the entire process takes about 15 minutes. What is the RPO of the database?
- An automatic failover to a backup web server has been configured for a website. Because the backup has to be powered on first and has to pull the newest version of the website from GitHub, the process takes about 8 minutes. What is the RTO of the website?

## Key-terms
- IDS = Intrusion Detection Systems
- IPS = Intrusion Prevention Systems
- RPO = Recovery Point Objective
- RTO = Recovery Time Objective


## Opdracht
### Gebruikte bronnen
- [IDS & IPS](www.juniper.net/nl/nl/research-topics/what-is-ids-ips.html)
- [7 Phases of Incident Response](https://www.titanfile.com/blog/phases-of-incident-response/)
- [Hack response strategies](https://www.ftc.gov/business-guidance/resources/data-breach-response-guide-business)
- [System Hardening](https://blog.netwrix.com/2023/02/22/system-hardening/)
- [System Hardening + 10 Best Practices for Systems Hardening](https://www.beyondtrust.com/resources/glossary/systems-hardening)





### Ervaren problemen

### Resultaat

#### Case 1:
RPO van case 1 is 24 uur. De database heeft een dagelijkse backup van de bestanden. dit betekend dat het bedrijf maximaal 24 uur aan "werk" kwijt kan raken bij een mogelijke backup.
De RTO van case 1 is 15 minuten. Het proces om de backup te recoveren duurt 15 minuten.

#### Case2:
De RTO van case 2 is 8 minuten. Het bedrijf uit deze case doet er 8 minuten over om de nieuwste versie van github te pullen.
De RPO van dit bedrijf is onbekend omdat er geen informatie is over de frequentie van de backups.