# ped <- read.table(header = T, text= " id sire dam
#                                       1 0 0
#                                       2 0 0
#                                       3 0 0
#                                       4 1 2
#                                       5 3 2
#                                       6 4 5   ")
# ped
# 
# # install.packages("optiSel")

library(optiSel)

ped <- read.table(header = T, text= " id sire dam
                                      A 0 0
                                      B 0 0
                                      C 0 0 
                                      D A B
                                      E C B
                                      F D E   ")
ped


pedi <- prePed(ped)

pedplot(pedi)

2*pedIBD(pedi)


#########################3

Paso 2

#########################3

# # install.packages("optiSel")

library(optiSel)

ped <- read.table(header = T, text= " id sire dam
                                      1 0 0
                                      2 0 0
                                      4 1 2
                                      5 4 2
                                      6 4 5 
                                      7 6 5
                                      8 4 7
                  ")
ped


pedi <- prePed(ped)

pedplot(pedi)

2*pedIBD(pedi)

# el animal mas consanguineo es el 6 con un coeficiente de consanguinidad de 0.375

  
  


