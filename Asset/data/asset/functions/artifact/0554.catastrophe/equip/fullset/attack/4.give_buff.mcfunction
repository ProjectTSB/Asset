#> asset:artifact/0554.catastrophe/equip/fullset/attack/4.give_buff
#
# バフを得る
#
# @within function asset:artifact/0554.catastrophe/equip/fullset/attack/2.main

#> Private
# @private
    #declare score_holder $Temp

# (ダメージ合計 / 1000)をStackへ
# ダメージ合計は10倍で計算しているので10000で割る
    scoreboard players operation $Temp Temporary = @s FE.DamageSum
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $Temp Temporary /= $10000 Const

# 破滅の騎士道(ID:263)を得る
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スコアを10000で剰余算
# 余剰分もリセットすると無駄が発生してしまうため
    scoreboard players operation @s FE.DamageSum %= $10000 Const

# リセット
    scoreboard players reset $Temp Temporary
