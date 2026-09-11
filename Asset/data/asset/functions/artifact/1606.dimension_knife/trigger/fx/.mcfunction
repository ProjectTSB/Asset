#> asset:artifact/1606.dimension_knife/trigger/fx/
#
#
#
# @within function asset:artifact/1606.dimension_knife/trigger/3.main

# AttakCountが3かつ、バフがあるときは次元を斬る演出
    execute if data storage api: Return.Effect if score @s 18M.AttackCount matches 3.. run return run function asset:artifact/1606.dimension_knife/trigger/fx/dimension_slash

# 通常の斬撃演出
    execute anchored eyes positioned ^ ^ ^1.3 positioned ~ ~-0.5 ~ run function asset:artifact/1606.dimension_knife/trigger/fx/slash
