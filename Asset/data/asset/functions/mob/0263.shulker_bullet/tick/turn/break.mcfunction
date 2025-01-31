#> asset:mob/0263.shulker_bullet/tick/turn/break
# @within asset:mob/0263.shulker_bullet/tick/turn/

scoreboard players reset $7B.Temp Temporary
tag @a[tag=7B.Target,distance=..25] remove 7B.Target
data modify storage asset:context this.TurnLimit set value 0
data remove storage asset:context this.Target
