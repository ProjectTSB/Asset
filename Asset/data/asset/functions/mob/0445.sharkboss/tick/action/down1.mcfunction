#> asset:mob/0445.sharkboss/tick/action/down1
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/down_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 40 run function asset:mob/0445.sharkboss/tick/action/utility/end

#次のモーションを予約
execute if score @s CD.AnimationTimer matches 40 run tag @s add CD.Reserving
execute if score @s CD.AnimationTimer matches 40 run tag @s add CD.Action.Down2

execute if score @s CD.AnimationTimer matches 0 facing entity @a[tag=CD.Target,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s CD.AnimationTimer matches 0 run tp @s ^ ^ ^-1.5
execute if score @s CD.AnimationTimer matches 10..40 run tp @s ^ ^ ^-0.3
