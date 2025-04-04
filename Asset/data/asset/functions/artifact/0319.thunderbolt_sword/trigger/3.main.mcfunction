#> asset:artifact/0319.thunderbolt_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0319.thunderbolt_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く


# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 100
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:poof ~ ~ ~ 0.7 0.1 0.7 0.1 10
    playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 1 1.5

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 12..27
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset
