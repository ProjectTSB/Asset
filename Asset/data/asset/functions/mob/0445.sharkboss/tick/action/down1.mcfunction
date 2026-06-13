#> asset:mob/0445.sharkboss/tick/action/down1
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

    execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/down_start/tween {duration:1, to_frame: 0}
    execute if score @s CD.AnimationTimer matches 85 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション
    execute if score @s CD.AnimationTimer matches 0 facing entity @a[tag=CD.Player.Target,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^-4 ~ ~
    #execute if score @s CD.AnimationTimer matches 0 run tp @s ^ ^ ^-5
    execute if score @s CD.AnimationTimer matches 10..50 run tp @s ^ ^ ^-0.2

#次のモーションを予約
    execute if score @s CD.AnimationTimer matches 85 run tag @s add CD.Reserving
    execute if score @s CD.AnimationTimer matches 85 run tag @s add CD.Action.Down2
#演出
    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1.2
    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.horse.death hostile @a ~ ~ ~ 1 1.3
    execute if score @s CD.AnimationTimer matches 1 run playsound minecraft:entity.hoglin.death hostile @a ~ ~ ~ 1 0.8
