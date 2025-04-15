#> asset:artifact/1205.electric_fly_swatter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1205.electric_fly_swatter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] at @s run function asset:artifact/1205.electric_fly_swatter/trigger/vfx

# ダメージ
# 敵が1ブロック以上浮いてるならダメージ1.5倍
    execute store result storage api: Argument.Damage float 1 run random value 400..500
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] if block ~ ~-1 ~ #lib:no_collision_without_fluid store result storage api: Argument.Damage float 1.5 run data get storage api: Argument.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run function api:damage/
    function api:damage/reset

# 敵が浮いてるなら叩き落とす
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Immovable,tag=!Uninterferable,distance=..6] at @s if block ~ ~-1 ~ #lib:no_collision_without_fluid run function asset:artifact/1205.electric_fly_swatter/trigger/dragon_strike/

# リセット
    scoreboard players reset $Recursive Temporary
