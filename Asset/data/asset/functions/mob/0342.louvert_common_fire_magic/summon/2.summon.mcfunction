#> asset:mob/0342.louvert_common_fire_magic/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0342.louvert_common_fire_magic/summon/1.trigger

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["MobInit","9I.Init"],item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16753152,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[0f,0.2f,0f]}}
# ID (int)
    data modify storage asset:mob ID set value 342
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# 初期化処理
    execute as @e[type=item_display,tag=9I.Init,distance=..0.01] at @s run function asset:mob/0342.louvert_common_fire_magic/summon/init