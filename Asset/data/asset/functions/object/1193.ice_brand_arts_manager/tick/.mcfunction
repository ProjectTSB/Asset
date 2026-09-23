#> asset:object/1193.ice_brand_arts_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1193/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 武器召喚
    execute if score @s General.Object.Tick matches 0 rotated ~15 0 positioned ^ ^ ^6 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 1 rotated ~-40 0 positioned ^ ^ ^10 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 2 rotated ~75 0 positioned ^ ^ ^8.5 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 3 rotated ~110 0 positioned ^ ^ ^4.5 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 4 rotated ~160 0 positioned ^ ^ ^10 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 5 rotated ~-150 0 positioned ^ ^ ^6.5 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 6 rotated ~-100 0 positioned ^ ^ ^11.5 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 7 rotated ~-10 0 positioned ^ ^ ^7.5 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
    execute if score @s General.Object.Tick matches 8 rotated ~180 0 positioned ^ ^ ^3 positioned ~ ~4 ~ run function asset:artifact/1456.ice_brand_arts/trigger/summon
# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
