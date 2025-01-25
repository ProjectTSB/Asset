#> asset:artifact/0358.cyfosio/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/358/attack_melee/


# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..10]

# 攻撃したエンティティを40回復
    data modify storage lib: Argument.Heal set value 40f
    function lib:heal/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:heal/

# リセット
    function lib:heal/reset