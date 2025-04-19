#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/plus.m
# @input args
#   Value : int
#   Decimal : int
#   Type : String
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/**

$data modify storage asset:temp 01.$(Type) set value '{"text":"+$(Value).$(Decimal)%","color":"green"}'
