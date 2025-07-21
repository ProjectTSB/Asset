#> asset:artifact/0769.shaking_splash/trigger/5.beam
#
# スニーク時にビームを発射する処理
#
# @within function asset:artifact/0769.shaking_splash/trigger/3.main

# 演出
    playsound block.bubble_column.upwards_ambient player @a ~ ~ ~ 0.4 1.6 0
    playsound block.bubble_column.upwards_ambient player @a ~ ~ ~ 0.4 1.3 0
    playsound block.bubble_column.upwards_ambient player @a ~ ~ ~ 0.4 1.0 0
    playsound block.bubble_column.bubble_pop player @a ~ ~ ~ 1 0 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.3 1.8 0
    particle firework ~ ~0.6 ~ 0.3 0.3 0.3 0.25 20

# 発射
    execute anchored eyes positioned ^-0.35 ^-0.25 ^0.5 run function asset:artifact/0769.shaking_splash/trigger/beam_recursive

# ダメージ
    data modify storage api: Argument.Damage set value 220.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set value 11.5f
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=LandingTarget,distance=..15] run function api:damage/
    function api:damage/reset

# Tag消し
    tag @e[type=#lib:living,tag=LandingTarget,distance=..15] remove LandingTarget
