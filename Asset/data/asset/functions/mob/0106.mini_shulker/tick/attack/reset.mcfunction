#> asset:mob/0106.mini_shulker/tick/attack/reset
# @within function asset:mob/0106.mini_shulker/tick/attack/

tag @a[distance=..50] remove 2Y.Target
data remove storage asset:context this.Target
function asset:mob/0106.mini_shulker/tick/select/

execute unless score @s General.Mob.Tick matches 500 run function asset:mob/0106.mini_shulker/tick/reset
