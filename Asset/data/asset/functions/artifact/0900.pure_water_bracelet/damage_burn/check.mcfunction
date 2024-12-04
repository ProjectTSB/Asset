#> asset:artifact/0900.pure_water_bracelet/damage_burn/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/900/damage_burn/check

execute unless predicate api:area/is_breakable run tag @s remove CanUsed
execute if block ~ ~ ~ lava run tag @s remove CanUsed
execute if block ~ ~1 ~ lava run tag @s remove CanUsed
execute if entity @s[tag=CanUsed] if predicate lib:random_pass_per/60 run tag @s remove CanUsed
