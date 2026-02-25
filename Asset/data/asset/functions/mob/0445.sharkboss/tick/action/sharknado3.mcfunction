#> asset:mob/0445.sharkboss/tick/action/sharknado3
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/sharknado2

#
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_end/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 45 run function asset:mob/0445.sharkboss/tick/action/utility/end

scoreboard players set @s CD.ElectrifiedActionCounter 0
tag @s remove CD.Electrified
tag @s remove CD.Charging
