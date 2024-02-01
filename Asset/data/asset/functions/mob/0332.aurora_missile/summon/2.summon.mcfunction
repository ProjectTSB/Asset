#> asset:mob/0332.aurora_missile/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0332.aurora_missile/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 332
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName

# 向きを合わせる
    data modify entity @e[type=marker,tag=MobInit,distance=..0.01,limit=1] Rotation set from entity @s Rotation

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon