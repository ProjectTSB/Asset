#> asset:object/1106.mini_black_hole/tick/explode/sound
#
#
#
# @within asset:object/1106.mini_black_hole/tick/explode/

execute if score @s General.Object.Tick matches 1 run playsound entity.wither.death master @a[distance=..32] ~ ~ ~ 0.3 0.5 0.1
execute if score @s General.Object.Tick matches 1 run playsound entity.warden.sonic_boom master @a[distance=..32] ~ ~ ~ 1 1 0.1
execute if score @s General.Object.Tick matches 1 run playsound block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 0.2 1.5 0.1

scoreboard players operation $UQ.Temp Temporary = @s General.Object.Tick
scoreboard players operation $UQ.Temp Temporary %= $4 Const
execute if score $UQ.Temp Temporary matches 0 run playsound entity.enderman.teleport neutral @a[distance=..32] ~ ~ ~ 1 0
scoreboard players reset $UQ.Temp Temporary
