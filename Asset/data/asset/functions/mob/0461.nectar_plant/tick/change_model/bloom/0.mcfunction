#> asset:mob/0461.nectar_plant/tick/change_model/bloom/0
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/

    execute if score @s General.Mob.Tick matches 50 run function asset:mob/0461.nectar_plant/tick/change_model/1
    execute if score @s General.Mob.Tick matches 50 run playsound block.sweet_berry_bush.break hostile @a ~ ~ ~ 1 0.75
