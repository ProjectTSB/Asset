#> asset:artifact/0554.catastrophe/attack/buff
# @within function asset:artifact/0554.catastrophe/attack/2.check_condition

# Stackを取得
    scoreboard players operation $FE.Temp Temporary = @s FE.DamageSum
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $FE.Temp Temporary /= $20000 Const
    scoreboard players reset $FE.Temp Temporary

# 破滅の騎士道(ID:263)を得る
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スコアを剰余算
    scoreboard players operation @s FE.DamageSum %= $20000 Const
