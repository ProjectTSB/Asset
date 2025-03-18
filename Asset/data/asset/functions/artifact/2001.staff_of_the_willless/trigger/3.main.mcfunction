#> asset:artifact/2001.staff_of_the_willless/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2001.staff_of_the_willless/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    data modify storage api: Argument.ID set value 1119
    execute positioned 3071 120 -512 facing entity @s eyes rotated ~ 0 positioned ^ ^ ^1 run function api:object/summon
