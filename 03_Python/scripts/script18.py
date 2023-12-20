import csv 
from csv import DictWriter

firstName = "What is your first name?\n"
lastName = "What is your last name?\n"
jobTitle = "What is your profession?\n"
company = "Where do you work?\n"

personDict = {}
personDict["First name"] = input(firstName)
personDict["Last name"] = input(lastName)
personDict["Job title"] = input(jobTitle)
personDict["Company"] = input(company)

fieldNames = ["First name", "Last name", "Job title", "Company"]

with open("test.csv", "a", newline='') as f:  
    writer = DictWriter(f,fieldnames=fieldNames)
    if f.tell() == 0:
        writer.writeheader()

    writer.writerow(personDict)
    f.close()


