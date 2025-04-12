#> asset:artifact/0554.catastrophe/attack/buff
# @within function asset:artifact/0554.catastrophe/attack/3.main

# (ダメージ合計 / 1000)をStackへ
# ダメージ合計は10倍で計算しているので10000で割る
    scoreboard players operation $FE.Temp Temporary = @s FE.DamageSum
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $FE.Temp Temporary /= $10000 Const
    scoreboard players reset $FE.Temp Temporary

# 破滅の騎士道(ID:263)を得る
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スコアを10000で剰余算
# 余剰分もリセットすると無駄が発生してしまうため
    scoreboard players operation @s FE.DamageSum %= $10000 Const
