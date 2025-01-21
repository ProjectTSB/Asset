#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/minus.m
#
# @input args:
#   Val : float
#   Type : String
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/**

    $data modify storage asset:temp 01.$(Type) set value "$(Val)%"
