#> asset:mob/0106.mini_shulker/tick/attack/reset
# @within function asset:mob/0106.mini_shulker/tick/attack/

tag @a[distance=..50] remove 2Y.Target
data remove storage asset:context this.Target
execute if function asset:mob/0106.mini_shulker/tick/select/ run return run scoreboard players set @s General.Mob.Tick 450

function asset:mob/0106.mini_shulker/tick/reset
