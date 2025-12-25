#> asset:object/1011.456_dice/tick/start
#
#
#
# @within function asset:object/1011.456_dice/tick/

# サウンド
    playsound ogg:random.levelup neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.note_block.xylophone neutral @a ~ ~ ~ 1.5 1

# 数値表示
    execute if data storage asset:context this{Num:4} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:8,CustomName:'{"text":"  4  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if data storage asset:context this{Num:5} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:8,CustomName:'{"text":"  5  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if data storage asset:context this{Num:6} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:8,CustomName:'{"text":"  6  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}

    execute if data storage asset:context this{Num:4} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:9,CustomName:'{"text":"  4  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if data storage asset:context this{Num:5} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:9,CustomName:'{"text":"  5  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if data storage asset:context this{Num:6} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:9,CustomName:'{"text":"  6  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}

    execute if data storage asset:context this{Num:4} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:10,CustomName:'{"text":"  4  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if data storage asset:context this{Num:5} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:10,CustomName:'{"text":"  5  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if data storage asset:context this{Num:6} run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:10,CustomName:'{"text":"  6  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
