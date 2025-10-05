#> asset:mob/0445.sharkboss/tick/skill/bite
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute as @e[tag=CD.ModelRoot] at @s run function animated_java:sharkboss/animations/animation_model_general4/tween {duration:1, to_frame: 0}
scoreboard players set @s General.Mob.Tick 0
scoreboard players set @s CD.AnimationTimer 0
