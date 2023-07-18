devtools::install()
library(testpkg)

##############
#
# Class initalisation
#
#

B1(x = 1)
B2(x = 1)
B3(x = 1)
B4(x = 1)

new("Base_1", x = 1)
new("Base_2", x = 1)
new("Base_3", x = 1)
new("Base_4", x = 1)

setClass("Derv_1", contains = "Base_1")
setClass("Derv_2", contains = "Base_2")
setClass("Derv_3", contains = "Base_3")
setClass("Derv_4", contains = "Base_4")


##############
#
# Playing with Methods
#
#


b1 <- B1(x = 4)
b2 <- B2(x = 6)
# This works despite not using exportMethods() !?!
myGen(b1)
myGen(b2)

mean(b1)         # Errors as generic is not exported
library(Matrix) 
mean(b1)         # Now works
