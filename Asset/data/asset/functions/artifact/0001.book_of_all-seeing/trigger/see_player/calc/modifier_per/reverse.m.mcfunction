#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/reverse.m
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_player/

# 補正を-1000倍してスコアへ移す
    $execute store result score $01.Temp Temporary run data get storage api: Return.$(Type) -1000

# -1000する
    scoreboard players add $01.Temp Temporary 1000

# storageに戻す
    execute store result storage asset:temp 01.Val int 0.1 run scoreboard players get $01.Temp Temporary

# 次のマクロに引き継ぐ用にセットしておく
    $data modify storage asset:temp 01.Type set value "$(Type)"

# %の形に整える
    execute if score $01.Temp Temporary matches 0.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/plus.m with storage asset:temp 01
    execute unless score $01.Temp Temporary matches 0.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/minus.m with storage asset:temp 01
