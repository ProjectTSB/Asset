#> asset:mob/0182.skull_raven/init/
# @within asset:mob/alias/182/init

execute if predicate api:global_vars/difficulty/min/2_hard run item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"punch",lvl:1s}]}
