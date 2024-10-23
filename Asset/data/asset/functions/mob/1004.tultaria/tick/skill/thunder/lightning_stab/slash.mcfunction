#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/slash
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick


# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:16773266,Frames:[20335,20336,20337],Scale:[10f,10f,0.1f],Transformation:{left_rotation:[-0.39f,-0.58f,-0.69f,0.13f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute anchored eyes positioned ^ ^-1 ^ positioned ^ ^ ^2 run function api:object/summon

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5
