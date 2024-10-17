#> asset:mob/0286.456_dice_entity/init/
# @within asset:mob/alias/286/init

scoreboard players operation @e[type=armor_stand,tag=MobInit,distance=..0.01] CU.UserID = @p[tag=this] UserID
execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/0286.456_dice_entity/summon/init
