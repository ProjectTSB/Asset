#> asset:object/1058.brave_knight/tick/event/combo/1
#
#
#
# @within function asset:object/1058.brave_knight/tick/event/combo/

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.5
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2

# 体の向き
    tp @s ~ ~ ~ ~90 ~

# ポーズ
    data modify entity @s Pose.LeftArm set value [45f,0f,-45f]
    data modify entity @s Pose.RightArm set value [15f,0f,90f]

# パーティクル
    execute facing entity @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] feet anchored eyes positioned ^ ^0.25 ^ positioned ^ ^ ^1 run function asset:object/1058.brave_knight/tick/event/combo/particle

# フィールド設定
    data modify storage api: Argument.FieldOverride set value {Color:50175,Frames:[20335,20336,20337],Scale:[1.5f,1.5f,0.1f],Transformation:{left_rotation:[0.0f,0.7f,0.7f,0.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute facing entity @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] feet anchored eyes positioned ^ ^0.25 ^ positioned ^ ^ ^1 run function api:object/summon

# ダメージを与える
    execute as @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] run function asset:object/1058.brave_knight/tick/event/combo/damage
