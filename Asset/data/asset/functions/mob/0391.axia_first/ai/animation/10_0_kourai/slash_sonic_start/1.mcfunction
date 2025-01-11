#> asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/1
#
# 斬撃飛ばし1
#
# @within function asset:mob/0391.axia_first/ai/animation/10_0_kourai/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2013
    execute positioned ^0 ^1.1 ^1 run function api:object/summon

# ディスプレイ変更
    execute positioned ^0 ^1.1 ^1 run data modify entity @e[type=item_display,tag=2013.SonicBoomSlash,distance=..0.1,limit=1] transformation set value {left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,5f,0.1f]}

# ディスプレイの位置調整
    execute positioned ^0 ^1.1 ^1 as @e[type=item_display,tag=2013.SonicBoomSlash,distance=..0.1] facing entity @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] feet rotated ~180 0 run tp @s ^ ^ ^ ~ ~
