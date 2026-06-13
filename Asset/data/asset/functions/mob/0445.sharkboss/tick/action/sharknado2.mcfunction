#> asset:mob/0445.sharkboss/tick/action/sharknado2
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

#
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_loop/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 80 run function asset:mob/0445.sharkboss/tick/action/utility/end

# サメ召還
execute if score @s CD.AnimationTimer matches 0 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
execute if score @s CD.AnimationTimer matches 10 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
execute if score @s CD.AnimationTimer matches 20 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
execute if score @s CD.AnimationTimer matches 30 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
execute if score @s CD.AnimationTimer matches 40 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
execute if score @s CD.AnimationTimer matches 50 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
execute if score @s CD.AnimationTimer matches 60 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
execute if score @s CD.AnimationTimer matches 70 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark

#execute positioned ~ ~0.5 ~ run function asset:mob/0445.sharkboss/vfx/expand_circle

particle gust ~ ~ ~ 10 0 10 4 5 normal
