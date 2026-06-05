#> asset:object/1161.ice_brand_arts_axe/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1161/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute on passengers if data entity @s interaction run function asset:object/1161.ice_brand_arts_axe/pick/

# 落下処理
    execute if score @s General.Object.Tick matches 10.. if score @s 1161.Land matches 0 at @s if block ~ ~-0.1 ~ #lib:no_collision/ run function asset:object/1161.ice_brand_arts_axe/tick/fall

# 消滅処理
    execute at @s[scores={General.Object.Tick=600..}] run function asset:object/1161.ice_brand_arts_axe/tick/kill
