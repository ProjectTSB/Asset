#> asset:mob/0282.call_fulstuka/init/
# @within asset:mob/alias/282/init

scoreboard players set @e[type=armor_stand,tag=MobInit,distance=..0.01] 7U.Tick -10
scoreboard players operation @e[type=armor_stand,tag=MobInit,distance=..0.01] 7U.UserID = @s UserID
