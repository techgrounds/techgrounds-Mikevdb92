# [File & Permissions]
1. maak een nieuw tekstbestand
2. laat hiervan toegankelijkheids informatie zien (rechten, bestands eigenaar, group etc.)
3. maak een uitvoerbaar bestand door execute permission (x) toe te voegen.
4. verwijder de read en write toegang van het bestand voor de group en andere gebruikers, niet de owner. Kan de eigenaar het bestand nog steeds lezen? 
5. verander de eigenaar van het bestand naar een andere gebruiker > orginele eigenaar kan het bestand niet lezen zonder "sudo".
6. verander de groups ownership van het bestand naar een andere groep.

## Key-terms
- long listing
- chmod
- chow
- rwx - "read" "write" "executable"
 - ugo - "user" "groups" "others" 

## Opdracht
### Gebruikte bronnen
[File permission basics](https://www.redhat.com/sysadmin/linux-file-permissions-explained)
[File permission extra](https://www.pluralsight.com/blog/it-ops/linux-file-permissions)


### Ervaren problemen
[Geef een korte beschrijving van de problemen waar je tegenaan bent gelopen met je gevonden oplossing.]

### Resultaat


![Execute Permission](../00_includes/w1_filepermissions_fileexe.PNG)

![Long listing](../00_includes/w1_filepermissions_longlistingpermission.PNG)

![Change rwx permisson](../00_includes/w1_filepermissions_urwx.PNG)

![Change file owner](../00_includes/w1_filepermissions_ownerchange.PNG)

![Change group owner](../00_includes/w1_filepermissions_groupchange.PNG)
