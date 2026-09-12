#> asset:object/1161.ice_brand_arts/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1161/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute on passengers if data entity @s interaction run function asset:object/1161.ice_brand_arts/pick/

# 落下処理

    execute if score @s General.Object.Tick matches 10.. unless entity @s[tag=W9.Land] at @s run function asset:object/1161.ice_brand_arts/tick/fall

# 消滅処理
    execute at @s[scores={General.Object.Tick=600..}] run function asset:object/1161.ice_brand_arts/tick/kill
