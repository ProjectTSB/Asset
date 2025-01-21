#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/none/m
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_player/

#> Private
# @private
    #declare score_holder $01.Calc1
    #declare score_holder $01.Calc2

# Baseを取得 (e2)
    $execute store result score $01.Calc1 Temporary run data get storage api: Return.$(Type).Base 100

# AttackTypeを取得 (e2)
    $execute store result score $01.Calc2 Temporary run data get storage api: Return.$(Type).$(AttackType) 100

# 計算
# ((Base * AttackType) - 10000) / 100

# Base * AttackType (e4)
    scoreboard players operation $01.Calc1 Temporary *= $01.Calc2 Temporary

# () - 10000 (e4)
    scoreboard players remove $01.Calc1 Temporary 10000

# () / 100してstorageに代入 (e2)
    execute store result storage asset:temp 01.Val int 0.01 run scoreboard players get $01.Calc1 Temporary
    $data modify storage asset:temp 01.Type set value "$(Type).$(AttackType).None"

    #data modify storage asset:temp 01.Val set string storage asset:temp 01.Val 0 -1

# %の形に整える
    execute if score $01.Calc1 Temporary matches 0.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/plus.m with storage asset:temp 01
    execute unless score $01.Calc1 Temporary matches 0.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/minus.m with storage asset:temp 01

# リセット
    scoreboard players reset $01.Calc1 Temporary
    scoreboard players reset $01.Calc2 Temporary
