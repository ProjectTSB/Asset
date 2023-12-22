#> asset:mob/0345.louvert_soul_bomb/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0345.louvert_soul_bomb/summon/1.trigger

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["MobInit","9L.Init"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20341}}}
# ID (int)
    data modify storage asset:mob ID set value 345
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# 初期化処理
    execute as @e[type=item_display,tag=9L.Init,distance=..0.01] at @s run function asset:mob/0345.louvert_soul_bomb/summon/init