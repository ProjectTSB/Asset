#> asset:object/1055.elemental_fish/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1055/hit_block

# 向きを変える
    execute if entity @s[tag=1055.Upper] at @s run tp @s ~ ~ ~ ~ ~-35
    execute if entity @s[tag=1055.Lower] at @s run tp @s ~ ~ ~ ~ ~80
    execute if entity @s[tag=1055.Forward] at @s run tp @s ~ ~ ~ ~20 ~-20

# リセット
    tag @s remove 1055.Forward
    tag @s remove 1055.Upper
    tag @s remove 1055.Lower
