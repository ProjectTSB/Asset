#> asset:artifact/0554.catastrophe/trigger/fullset/attack/5.buff
#
# バフを得る
#
# @within function asset:artifact/0554.catastrophe/trigger/fullset/attack/2.check

#> Private
# @private
    #declare score_holder $Temp

# (ダメージ合計 / 2000)をStackへ
# ダメージ合計は10倍で計算しているので20000で割る
    scoreboard players operation $Temp Temporary = @s FE.DamageSum
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $Temp Temporary /= $20000 Const

# 破滅の騎士道(ID:263)を得る
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Temp Temporary
