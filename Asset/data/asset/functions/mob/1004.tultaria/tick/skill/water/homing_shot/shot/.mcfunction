#> asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/homing_shot/tick

#> 行き先マーカー
# @private
#declare tag FacingMarker
#declare tag SpreadMarker

# 弾を出す
    # 中心
        execute positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["FacingMarker"]}
        function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/summon
    # 横1
        execute if entity @s[scores={RW.Phase=2..}] positioned ^5 ^ ^10 run summon marker ~ ~ ~ {Tags:["FacingMarker"]}
        execute if entity @s[scores={RW.Phase=2..}] run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/summon
    # 横1
        execute if entity @s[scores={RW.Phase=2..}] positioned ^-5 ^ ^10 run summon marker ~ ~ ~ {Tags:["FacingMarker"]}
        execute if entity @s[scores={RW.Phase=2..}] run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/summon
    # 横2
        execute if entity @s[scores={RW.Phase=3..}] positioned ^15 ^ ^10 run summon marker ~ ~ ~ {Tags:["FacingMarker"]}
        execute if entity @s[scores={RW.Phase=3..}] run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/summon
    # 横2
        execute if entity @s[scores={RW.Phase=3..}] positioned ^-15 ^ ^10 run summon marker ~ ~ ~ {Tags:["FacingMarker"]}
        execute if entity @s[scores={RW.Phase=3..}] run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/summon

# 演出
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 2 1.5
    playsound item.trident.riptide_2 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 2 1.2
    particle minecraft:explosion ~ ~1.5 ~ 0 0 0 0 0
    particle minecraft:electric_spark ~ ~1.5 ~ 0 0 0 1 50
