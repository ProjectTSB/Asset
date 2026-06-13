#> asset:mob/0445.sharkboss/tick/action/sharknadowatergun
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_slash/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 60 run function asset:mob/0445.sharkboss/tick/action/utility/end


#モーション系
#execute if score @s CD.AnimationTimer matches 0..20 run tp @s ^ ^ ^-0.1 ~ ~
#execute if score @s CD.AnimationTimer matches 21..35 run tp @s ^ ^ ^0.5 ~ ~
#execute if score @s CD.AnimationTimer matches 36..55 run tp @s ^ ^ ^0.2 ~ ~
#execute if score @s CD.AnimationTimer matches 46..53 run tp @s ^ ^ ^0.1 ~ ~

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..30 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/normal


#演出
#execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 0.5 2
execute if score @s CD.AnimationTimer matches 8 run playsound minecraft:block.chain.fall hostile @a ~ ~ ~ 1 0.9
execute if score @s CD.AnimationTimer matches 39 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1.0
#execute if score @s CD.AnimationTimer matches 24 run playsound minecraft:entity.shulker.death hostile @a ~ ~ ~ 1 0.9
#execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 0.5 1.8
#execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 1 0.9
#execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.6

#execute if score @s CD.AnimationTimer matches 27 run particle minecraft:electric_spark ^ ^1 ^2 0.3 0.3 0.3 1 10

# サメ召還
    execute if score @s CD.AnimationTimer matches 0 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
    execute if score @s CD.AnimationTimer matches 10 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
    execute if score @s CD.AnimationTimer matches 20 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
    execute if score @s CD.AnimationTimer matches 30 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
    execute if score @s CD.AnimationTimer matches 40 positioned ~ ~-3 ~ rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark

#ダメージ
#execute if score @s CD.AnimationTimer matches 24 positioned ^ ^ ^1 run function asset:mob/0445.sharkboss/tick/action/damage/bite
execute if score @s CD.AnimationTimer matches 39 positioned ^ ^ ^4 run function asset:mob/0445.sharkboss/tick/action/damage/sharknadoslash
    # Motion
    #data modify storage lib: Argument.VectorMagnitude set value 1.5d
    #execute if score @s CD.AnimationTimer matches 30 positioned ^ ^ ^3 run execute as @a[tag=!PlayerShouldInvulnerable] rotated ~ -35 run function lib:motion/looking
