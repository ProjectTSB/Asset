#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/other_modifier.m
# @input args
#   Type: string
#   IsReverse: boolean
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_player/

#> Private
# @private
    #declare score_holder $Modifier
    #declare score_holder $Decimal

# 取得 (e3)
    $execute store result score $Modifier Temporary run data get storage api: Return.$(Type) 1000
    scoreboard players remove $Modifier Temporary 1000

# IsReverse が true なら反転する
    $execute if data storage global Boolean.$(IsReverse) run scoreboard players operation $Modifier Temporary *= $-1 Const

# storage(e2) = X(e3) / 1(e1)
    execute store result storage asset:temp 01.Value int 0.1 run scoreboard players get $Modifier Temporary
# storage(e0) = X(e3) % 10(e1)
    scoreboard players operation $Decimal Temporary = $Modifier Temporary
    execute store result storage asset:temp 01.Decimal int 1 run scoreboard players operation $Decimal Temporary %= $10 Const
    $data modify storage asset:temp 01.Type set value "$(Type)"

# % の形に整える
    execute if score $Modifier Temporary matches 1.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/plus.m with storage asset:temp 01
    execute if score $Modifier Temporary matches 0 run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/neutral.m with storage asset:temp 01
    execute if score $Modifier Temporary matches ..-1 run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/minus.m with storage asset:temp 01
