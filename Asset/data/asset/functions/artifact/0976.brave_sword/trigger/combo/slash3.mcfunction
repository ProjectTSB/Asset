#> asset:artifact/0976.brave_sword/trigger/combo/slash3
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.8
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.5

# 攻撃判定
    # ターゲット指定
        execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add R4.Hit
        execute as @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..100] remove R4.Hit
    # ダメージ処理へ
        execute as @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] run function asset:artifact/0976.brave_sword/trigger/combo/damage

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:8908799,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.271f,-0.653f,0.271f,0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon

# 衝撃波を飛ばす
    data modify storage api: Argument.ID set value 1077
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon

# しばらく撃てなくなる
    tag @s add R4.FinishCoolTime
