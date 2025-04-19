#> asset:object/2174.heiloang_death_animation/tick/event
#
# Objectのtick時の処理
#
# @within asset:object/2174.heiloang_death_animation/tick/

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# 討伐
    execute if score @s General.Object.Tick matches 1 run function animated_java:heiloang_aj/animations/15_death/tween {duration:1, to_frame: 0}
    execute if score @s General.Object.Tick matches 1..3 run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 3 1.2
    execute if score @s General.Object.Tick matches 1 run playsound entity.wither.death hostile @a ~ ~ ~ 3 1.2
    execute if score @s General.Object.Tick matches 1..9 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 1.2 0.2
    execute if score @s General.Object.Tick matches 10..25 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 0.7 0.2
    execute if score @s General.Object.Tick matches 7 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s General.Object.Tick matches 35 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s General.Object.Tick matches 54 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute on passengers run scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 1..84 on passengers if entity @s[tag=aj.global.data] run function asset:object/2174.heiloang_death_animation/tick/particle.m with entity @s data.locators.locator_root
    execute if score @s General.Object.Tick matches 70..118 on passengers if entity @s[tag=aj.global.data] run function asset:object/2174.heiloang_death_animation/tick/particle_end.m with entity @s data.locators.locator_root

# モデル消去
    execute if score @s General.Object.Tick matches 119.. run function animated_java:heiloang_aj/remove/all
