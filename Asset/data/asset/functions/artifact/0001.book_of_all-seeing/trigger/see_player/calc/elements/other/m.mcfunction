#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/m
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_player/

#> Private
# @private
    #declare score_holder $01.Calc1
    #declare score_holder $01.Calc2
    #declare score_holder $01.Calc3

# Baseを取得 (e2)
    $execute store result score $01.Calc1 Temporary run data get storage api: Return.$(Type).Base 100

# AttackTypeを取得 (e2)
    $execute store result score $01.Calc2 Temporary run data get storage api: Return.$(Type).$(AttackType) 100

# ElementTypeを取得 (e2)
    $execute store result score $01.Calc3 Temporary run data get storage api: Return.$(Type).$(ElementType) 100

# 計算
# (Base * ((AttackType + ElementType) - 200)) / 100

# (AttackType + ElementType) - 200 (e2)
    scoreboard players operation $01.Calc2 Temporary += $01.Calc3 Temporary
    scoreboard players remove $01.Calc2 Temporary 200

# Base * () (e4)
    scoreboard players operation $01.Calc1 Temporary *= $01.Calc2 Temporary

# () / 100してstorageに代入 (e2)
    execute store result storage asset:temp 01.Val int 0.01 run scoreboard players get $01.Calc1 Temporary
    $data modify storage asset:temp 01.Type set value "$(Type).$(AttackType).$(ElementType)"

# %の形に整える
    execute if score $01.Calc1 Temporary matches 0.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/plus.m with storage asset:temp 01
    execute unless score $01.Calc1 Temporary matches 0.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/minus.m with storage asset:temp 01

# リセット
    scoreboard players reset $01.Calc1 Temporary
    scoreboard players reset $01.Calc2 Temporary
    scoreboard players reset $01.Calc3 Temporary
