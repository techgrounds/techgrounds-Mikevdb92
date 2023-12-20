personDicionary = {}
personDicionary["First name"] = "Casper"
personDicionary["Last name"] = "Velzen"
personDicionary["Job title"] = "Learning coach"
personDicionary["Company"] = "Techgrounds"

for key in personDicionary:
    print(key + ": " + personDicionary.get(key))