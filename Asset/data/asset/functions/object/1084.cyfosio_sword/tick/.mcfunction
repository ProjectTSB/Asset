#> asset:object/1084.cyfosio_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1084/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 10 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0.5f,0f]}}

    execute if score @s General.Object.Tick matches 10 run playsound block.portal.ambient player @a ~ ~ ~ 1 1
    execute if score @s General.Object.Tick matches 12 run playsound item.trident.hit_ground player @a ~ ~ ~ 1 1
    execute if score @s General.Object.Tick matches 12.. run particle composter ~ ~ ~ 0.5 0 0.5 0 10
    execute if score @s General.Object.Tick matches 12..20 run particle end_rod ~ ~ ~ 0 0 0 0.25 1

    execute if score @s General.Object.Tick matches 20..50 run particle end_rod ~ ~ ~ 0 0 0 0.5 2

    execute if score @s General.Object.Tick matches 50.. run particle end_rod ~ ~ ~ 0 0 0 1 6


    execute if score @s General.Object.Tick matches 80.. run function asset:object/1084.cyfosio_sword/tick/heal
