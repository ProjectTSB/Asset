#> asset:artifact/0312.fire_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0312.fire_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10

    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1.5

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 6..12
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset
