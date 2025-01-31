#> asset:artifact/1021.brave_book/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1021.brave_book/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    data modify storage api: Argument.ID set value 1058
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~ 0 positioned ^-2 ^ ^-2 run function api:object/summon

# 演出
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ 1 2
    playsound ogg:block.smithing_table.smithing_table2 neutral @a ~ ~ ~ 1 0.7
