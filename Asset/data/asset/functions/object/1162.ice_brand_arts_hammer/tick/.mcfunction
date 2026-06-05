#> asset:object/1162.ice_brand_arts_hammer/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1162/tick
# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute on passengers if data entity @s interaction run function asset:object/1162.ice_brand_arts_hammer/pick/

# 落下処理
    execute if score @s General.Object.Tick matches 10.. if score @s 1162.Land matches 0 at @s if block ~ ~-0.1 ~ #lib:no_collision/ run function asset:object/1162.ice_brand_arts_hammer/tick/fall

# 消滅処理
    execute at @s[scores={General.Object.Tick=600..}] run function asset:object/1162.ice_brand_arts_hammer/tick/kill
    
