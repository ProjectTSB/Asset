#> asset:object/1165.ice_brand_arts_spear/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1165/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute as @s on passengers if data entity @s interaction run function asset:object/1165.ice_brand_arts_spear/pick/

# 落下処理
    execute if score @s General.Object.Tick matches 10.. as @s[scores={Land=0}] at @s if block ~ ~-0.1 ~ air run function asset:object/1165.ice_brand_arts_spear/tick/fall
# 消滅処理
    execute at @s[scores={General.Object.Tick=600..}] run particle block packed_ice ~ ~ ~ 0.8 0.8 0.8 0 30
    execute at @s[scores={General.Object.Tick=600..}] run playsound block.glass.break master @a ~ ~ ~ 1 1.4
    kill @s[scores={General.Object.Tick=600..}]
