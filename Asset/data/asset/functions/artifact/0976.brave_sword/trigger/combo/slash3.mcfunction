#> asset:artifact/0976.brave_sword/trigger/combo/slash3
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1.5 1.8
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 1.5

# 攻撃
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:artifact/0976.brave_sword/trigger/combo/damage

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:8908799,Frames:[20335,20336,20337],Scale:[3f,3f,0.1f],Transformation:{left_rotation:[0.271f,-0.653f,0.271f,0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon

# 斬撃を飛ばす
    execute anchored eyes run summon armor_stand ^ ^1.5 ^ {Marker:1b,Invisible:1b,Small:1b,Tags:["Projectile","R4.SlashShot","R4.SlashShotInit"],Pose:{Head:[0.1f,0f,0.0f]},DisabledSlots:4144959}
    execute as @e[type=armor_stand,tag=R4.SlashShotInit,distance=..5,sort=nearest,limit=1] at @s run function asset:artifact/0976.brave_sword/trigger/slash_shot/init
    schedule function asset:artifact/0976.brave_sword/trigger/slash_shot/1.tick 1t replace

# しばらく撃てなくなる
    tag @s add R4.FinishCoolTime
