#> asset:mob/0353.rubiel_knife/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0353.rubiel_knife/summon/1.trigger

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:837}},Tags:["MobInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:0}
# ID (int)
    data modify storage asset:mob ID set value 353
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

# 初期化
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/0353.rubiel_knife/summon/app/1.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/common/summon