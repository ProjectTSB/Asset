#> asset:mob/1020.throwing_sword/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1020.throwing_sword/summon/1.trigger

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20245}},teleport_duration:1,Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 1020
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"レプリカアーク","color":"#cf3636","italic":false}'

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/common/summon