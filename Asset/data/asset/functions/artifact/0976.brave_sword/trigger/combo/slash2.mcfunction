#> asset:artifact/0976.brave_sword/trigger/combo/slash2
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 1
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:50175,Frames:[20335,20336,20337],Scale:[3f,3f,0.1f],Transformation:{left_rotation:[-0.596f,-0.38f,-0.596f,0.38f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon

# 攻撃
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:artifact/0976.brave_sword/trigger/combo/damage
