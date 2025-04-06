#> asset:artifact/0961.light_charm/trigger/update_modifier/apply.m
#
# @input args:
#   Armor : int
#   Speed : double
# @within function asset:artifact/0961.light_charm/trigger/update_modifier/

# 防御が上がるが重くなる
    $attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" $(Armor) add
    $attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" $(Speed) add
