#> asset:artifact/1269.apocalypse/trigger/vfx/
#
#
#
# @within function asset:artifact/1269.apocalypse/trigger/3.main

# particle
    particle crit ~ ~0.8 ~ 0 0 0 1 50 normal @a
    execute if score $Z9.Stack Temporary matches 2.. run particle crit ~ ~0.8 ~ 0 0 0 1.2 50 normal @a
    execute if score $Z9.Stack Temporary matches 5.. run particle crit ~ ~0.8 ~ 0 0 0 1.4 50 normal @a
    execute if score $Z9.Stack Temporary matches 8 run particle crit ~ ~0.8 ~ 0 0 0 1.6 50 normal @a

    execute if score $Z9.Stack Temporary matches 5.. run particle flame ~ ~0.8 ~ 0 0 0 0.5 80 normal @a
    execute if score $Z9.Stack Temporary matches 8 run particle flame ~ ~0.8 ~ 0 0 0 0.8 80 normal @a
    execute if score $Z9.Stack Temporary matches 8 run particle flame ~ ~0.8 ~ 0 0 0 1.0 80 normal @a

    execute if score $Z9.Stack Temporary matches ..4 run particle smoke ~ ~0.8 ~ 0 0 0 0.3 80 normal @a
    execute if score $Z9.Stack Temporary matches 5.. run particle large_smoke ~ ~0.8 ~ 0 0 0 0.5 80 normal @a
    execute if score $Z9.Stack Temporary matches 8 run particle large_smoke ~ ~0.8 ~ 0 0 0 0.8 80 normal @a


    execute if score $Z9.Stack Temporary matches 2.. run function asset:artifact/1269.apocalypse/trigger/vfx/circle/1
    execute if score $Z9.Stack Temporary matches 5.. run function asset:artifact/1269.apocalypse/trigger/vfx/circle/2
    execute if score $Z9.Stack Temporary matches 8 run function asset:artifact/1269.apocalypse/trigger/vfx/circle/3

# playsound
    execute if score $Z9.Stack Temporary matches ..2 run playsound item.totem.use player @a ~ ~ ~ 1 1.3
    execute if score $Z9.Stack Temporary matches 3..4 run playsound item.totem.use player @a ~ ~ ~ 1 1.1
    execute if score $Z9.Stack Temporary matches 5..6 run playsound item.totem.use player @a ~ ~ ~ 1 0.9
    execute if score $Z9.Stack Temporary matches 7..8 run playsound item.totem.use player @a ~ ~ ~ 1 0.7
    execute if score $Z9.Stack Temporary matches 8 run playsound item.trident.thunder player @a ~ ~ ~ 1 0.7
