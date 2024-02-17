#> asset:mob/1020.wave_attack/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1020.wave_attack/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit","SC.Init"]}
# ID (int)
    data modify storage asset:mob ID set value 1020
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# 地上に降りる
    execute as @e[type=marker,tag=SC.Init,distance=..0.01] run function asset:mob/1020.wave_attack/summon/init/