#> asset:artifact/0313.raging_fire_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0313.raging_fire_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] at @s run particle minecraft:lava ~ ~0.5 ~ 0 0.5 0 0.1 20
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1.3

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 12..27
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset
