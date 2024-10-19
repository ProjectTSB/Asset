#> asset:mob/0105.potion_projectile/init/
# @within asset:mob/alias/105/init

execute if entity @s[tag=2W.Poison] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:26112}}
execute if entity @s[tag=2W.Fire] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:13369344}}
execute if entity @s[tag=2W.Water] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:8454143}}
execute if entity @s[tag=2W.Thunder] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:16776960}}
execute if entity @s[tag=2W.Poison] run tag @s add 2X.Poison
execute if entity @s[tag=2W.Fire] run tag @s add 2X.Fire
execute if entity @s[tag=2W.Water] run tag @s add 2X.Water
execute if entity @s[tag=2W.Thunder] run tag @s add 2X.Thunder
