#> asset:artifact/0364.red_knights_sword/trigger/combo/slash2
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/3.main

# 演出
# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.7
    execute unless score @s A4.Charge matches 0.. run playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1.2 1
    execute if score @s A4.Charge matches 0.. run playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 1.5

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[3f,3f,0.1f],Transformation:{left_rotation:[-0.596f,-0.38f,-0.596f,0.38f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon

# 攻撃判定
    # ターゲット指定
        execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add A4.Hit
        execute as @e[type=#lib:living,type=!player,tag=A4.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=A4.Hit,tag=!Uninterferable,distance=..100] remove A4.Hit
    # ダメージ処理へ
        execute as @e[type=#lib:living,type=!player,tag=A4.Hit,tag=!Uninterferable,distance=..3] run function asset:artifact/0364.red_knights_sword/trigger/combo/damage
