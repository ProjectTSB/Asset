#> asset:artifact/1174.sanguis/trigger/combo/slash3
#
#
#
# @within function asset:artifact/1174.sanguis/trigger/3.main

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.5
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 1.5

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:14929614,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.5f,-0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^2 positioned ~ ~-0.5 ~ rotated ~ ~-10 run function api:object/summon

# 追撃用オブジェクトを配置
    data modify storage api: Argument.ID set value 1085
    execute store result storage api: Argument.FieldOverride.Damage double 1 run random value 80..110
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned as @e[type=#lib:living_without_player,tag=Enemy,tag=Victim,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] run function api:object/summon
