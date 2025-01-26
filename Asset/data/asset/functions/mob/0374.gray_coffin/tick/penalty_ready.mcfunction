#> asset:mob/0374.gray_coffin/tick/penalty_ready
#
#
#
# @within function asset:mob/0374.gray_coffin/tick/

# 高速で開閉を繰り返して爆発する
    execute if entity @s[scores={General.Mob.Tick=1000}] on passengers run data modify entity @s item.tag.CustomModelData set value 20448
    execute if entity @s[scores={General.Mob.Tick=1000}] run playsound block.chest.close hostile @a ~ ~ ~ 1 0.7 0
    execute if entity @s[scores={General.Mob.Tick=1008}] on passengers run data modify entity @s item.tag.CustomModelData set value 20449
    execute if entity @s[scores={General.Mob.Tick=1008}] run playsound block.chest.open hostile @a ~ ~ ~ 1 0.7 0

    execute if entity @s[scores={General.Mob.Tick=1015}] on passengers run data modify entity @s item.tag.CustomModelData set value 20448
    execute if entity @s[scores={General.Mob.Tick=1015}] run playsound block.chest.close hostile @a ~ ~ ~ 1 0.8 0
    execute if entity @s[scores={General.Mob.Tick=1022}] on passengers run data modify entity @s item.tag.CustomModelData set value 20449
    execute if entity @s[scores={General.Mob.Tick=1022}] run playsound block.chest.open hostile @a ~ ~ ~ 1 0.8 0

    execute if entity @s[scores={General.Mob.Tick=1028}] on passengers run data modify entity @s item.tag.CustomModelData set value 20448
    execute if entity @s[scores={General.Mob.Tick=1028}] run playsound block.chest.close hostile @a ~ ~ ~ 1 0.9 0
    execute if entity @s[scores={General.Mob.Tick=1034}] on passengers run data modify entity @s item.tag.CustomModelData set value 20449
    execute if entity @s[scores={General.Mob.Tick=1034}] run playsound block.chest.open hostile @a ~ ~ ~ 1 0.9 0

    execute if entity @s[scores={General.Mob.Tick=1039}] on passengers run data modify entity @s item.tag.CustomModelData set value 20448
    execute if entity @s[scores={General.Mob.Tick=1039}] run playsound block.chest.close hostile @a ~ ~ ~ 1 1.0 0
    execute if entity @s[scores={General.Mob.Tick=1044}] on passengers run data modify entity @s item.tag.CustomModelData set value 20449
    execute if entity @s[scores={General.Mob.Tick=1044}] run playsound block.chest.open hostile @a ~ ~ ~ 1 1.0 0

    execute if entity @s[scores={General.Mob.Tick=1048}] on passengers run data modify entity @s item.tag.CustomModelData set value 20448
    execute if entity @s[scores={General.Mob.Tick=1048}] run playsound block.chest.close hostile @a ~ ~ ~ 1 1.1 0
    execute if entity @s[scores={General.Mob.Tick=1052}] on passengers run data modify entity @s item.tag.CustomModelData set value 20449
    execute if entity @s[scores={General.Mob.Tick=1052}] run playsound block.chest.open hostile @a ~ ~ ~ 1 1.1 0

# 爆発
    execute if entity @s[scores={General.Mob.Tick=1060..}] run function asset:mob/0374.gray_coffin/tick/penalty_explode
