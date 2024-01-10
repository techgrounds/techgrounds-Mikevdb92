# [Counting in Binary and Hex]
Vertaal een aantal nummers van decimaal naar binary, binary naar decimaal, decimaal naar hexadecimal en als laatste van hexadecimal naar decimal

## Key-terms
- bases
- binary
- hexadecimal

## Opdracht
### Gebruikte bronnen
- [counting in bases](https://www.mathsisfun.com/numbers/bases.html)
- [Deci2Hexa](https://www.geeksforgeeks.org/decimal-to-hex-converter/)
- [Hexa2Deci](https://www.cuemath.com/numbers/hexadecimal-to-decimal/)
- [Converter ter controle](https://www.rapidtables.com/convert/number/hex-to-decimal.html)

### Ervaren problemen
Hexadecimal naar decimal verkeerde uitkomst.     

Foute berekening:   

    e0 = ( 0 x 16 ) + e
    e0 = ( 0 x    ) + 14

Goede berekening:

    e0 = (  e x 16 ) + 0  
    e0 = ( 14 x 16 ) + 0 

### Uitwerking
| Decimal | Binary|
|--|--|
| 16 | 0001 0000 |
| 128 | 1000 0000 |
| 228 | 1110 0101 |
| 112 | 0111 0000|
| 73 | 0100 1001 |
| | |

| Binary | Decimal |
|--|--|
| 1010 1010 | 170|
| 1111 0000 | 240|
| 1101 1011 | 219| 
| 1010 0000 | 160|
| 0011 1010 | 58| 
| | |


| Decimal | Hex |
|--|--|
| 15| F|
| 37| 25 |
| 246| F6 |
| 125| 7D | 
| 209| D1 |
| | | 

| Hex | Decimal |
|--|--|
| 88| 136 |
| e0| 224 |
| cb| 203|
| 2f| 47| 
| d8| 216|
| | |