#> asset:mob/0344.louvert_soul_blast/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0344.louvert_soul_blast/summon/1.trigger

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["MobInit","9K.Init","9K.SoulBlast"],item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:3211249,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.707f,0f,0.707f],translation:[0f,0f,0f],scale:[0.2f,0f,0f]}}
# ID (int)
    data modify storage asset:mob ID set value 344
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# 初期化処理
    execute as @e[type=item_display,tag=9K.Init,distance=..0.01] at @s run function asset:mob/0344.louvert_soul_blast/summon/init