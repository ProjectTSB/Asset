#> asset:mob/0354.rubiel_scythe/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0354.rubiel_scythe/summon/1.trigger

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {brightness:{sky:8,block:8},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20348}},Tags:["MobInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{axis:[0f,1f,0f],angle:2f},translation:[0f,0f,0f],scale:[0f,0f,0f]},teleport_duration:0,interpolation_duration:0}
# ID (int)
    data modify storage asset:mob ID set value 354
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

# 初期化
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/0354.rubiel_scythe/summon/app/1.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/common/summon