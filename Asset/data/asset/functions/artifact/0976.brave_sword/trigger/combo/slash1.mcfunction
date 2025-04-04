#> asset:artifact/0976.brave_sword/trigger/combo/slash1
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.8
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 1.5

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:50175,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon

# 攻撃判定
    # ターゲット指定
        execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add R4.Hit
        execute as @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..100] remove R4.Hit
    # ダメージ処理へ
        execute as @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] run function asset:artifact/0976.brave_sword/trigger/combo/damage
