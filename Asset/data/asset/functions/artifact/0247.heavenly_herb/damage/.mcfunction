#> asset:artifact/0247.heavenly_herb/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/247/damage/

# 5%の確率で昇天する
    execute if predicate lib:random_pass_per/5 run function asset:artifact/0247.heavenly_herb/damage/4.ascension

# 回復効果
    data modify storage api: Argument.Heal set value 18f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 演出
    particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 100 normal @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 0.1
