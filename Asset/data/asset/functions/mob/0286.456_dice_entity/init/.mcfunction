#> asset:mob/0286.456_dice_entity/init/
# @within asset:mob/alias/286/init

scoreboard players operation @s CU.UserID = @p[tag=this] UserID

# 4-6の乱数
    execute store result score @s CU.RandomCount run random value 4..6
