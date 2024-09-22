#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/1
#
# 斬撃エフェクト表示
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/
#   asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:20353}},Color:16777088,Second:8,Scale:7f,transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    function api:object/summon
    execute as @e[type=item_display,tag=5.SlashEffect,distance=..0.001,sort=nearest,limit=1] positioned ^ ^0.5 ^1 run tp @s ~ ~ ~ ~ ~

# サウンド
    function asset:mob/0393.labyria_first/ai/general/6.slash_sound
