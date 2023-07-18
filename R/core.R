


B1 <- setClass( "Base_1", slots = list(x = "numeric"))
B2 <- setClass( "Base_2", slots = list(x = "numeric"))
B3 <- setClass( "Base_3", slots = list(x = "numeric"))
B4 <- setClass("Base_4", slots = list(x = "numeric"))




setGeneric(
    name = "myGen",
    def = function(x, y) standardGeneric("myGen"),
)

setMethod(
    f = "myGen",
    signature = "Base_1",
    definition = function(x) "AAA"
)

setMethod(
    f = "myGen",
    signature = "Base_2",
    definition = function(x) "BBB"
)


## Generic is defined within the Matrix package
setMethod(
    f = "mean",
    signature = "Base_1",
    definition = function(x) "not a df"
)



