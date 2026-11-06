#> asset:object/2195.eclael_death_animation/tick/event
#
# Objectのtick時の処理
#
# @within asset:object/2195.eclael_death_animation/tick/

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 討伐アニメーション再生(100 tick)
    execute if score @s General.Object.Tick matches 1 run function animated_java:eclael/animations/30_0_phase_death/tween {duration:1, to_frame: 1}

# 移動
    execute if score @s General.Object.Tick matches 1..15 at @s positioned ^ ^ ^-0.1 if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~
    execute if score @s General.Object.Tick matches 1..15 at @s positioned ^ ^-0.1 ^ if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~
    execute if score @s General.Object.Tick matches 54..85 at @s positioned ^ ^0.04 ^ if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~

# 効果音
    execute if score @s General.Object.Tick matches 1 run function animated_java:eclael/variants/blink/apply
    execute if score @s General.Object.Tick matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.7
    execute if score @s General.Object.Tick matches 15 run playsound block.grass.step hostile @a ~ ~ ~ 1 0.7
    execute if score @s General.Object.Tick matches 86 run playsound item.trident.return hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Object.Tick matches 86 run playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Object.Tick matches 86 run playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Object.Tick matches 86..140 run playsound block.amethyst_block.chime hostile @a ~ ~ ~ 2 1

# 演出
    execute if score @s General.Object.Tick matches 86 positioned ~ ~1.8 ~ run particle flash ~ ~ ~ 0.2 0.2 0.2 0 5
    execute if score @s General.Object.Tick matches 86 positioned ~ ~1.8 ~ run particle firework ~ ~ ~ 0 0 0 0.5 20
    execute if score @s General.Object.Tick matches 86 positioned ~ ~1.8 ~ run particle firework ~ ~ ~ 0 0 0 0.8 20
    execute if score @s General.Object.Tick matches 86 positioned ~ ~1.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/0
    execute if score @s General.Object.Tick matches 87 positioned ~ ~1.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/1
    execute if score @s General.Object.Tick matches 88 positioned ~ ~1.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/2
    execute if score @s General.Object.Tick matches 89 positioned ~ ~1.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/3
    execute if score @s General.Object.Tick matches 90 positioned ~ ~1.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/4
    execute if score @s General.Object.Tick matches 91 positioned ~ ~1.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/5

    execute if score @s General.Object.Tick matches 86 positioned ~ ~2.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/0
    execute if score @s General.Object.Tick matches 87 positioned ~ ~2.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/1
    execute if score @s General.Object.Tick matches 88 positioned ~ ~2.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/2
    execute if score @s General.Object.Tick matches 89 positioned ~ ~2.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/3
    execute if score @s General.Object.Tick matches 90 positioned ~ ~2.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/4
    execute if score @s General.Object.Tick matches 91 positioned ~ ~2.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/5

    execute if score @s General.Object.Tick matches 86 positioned ~ ~3.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/0
    execute if score @s General.Object.Tick matches 87 positioned ~ ~3.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/1
    execute if score @s General.Object.Tick matches 88 positioned ~ ~3.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/2
    execute if score @s General.Object.Tick matches 89 positioned ~ ~3.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/3
    execute if score @s General.Object.Tick matches 90 positioned ~ ~3.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/4
    execute if score @s General.Object.Tick matches 91 positioned ~ ~3.8 ~ run function asset:object/2195.eclael_death_animation/tick/particle/5

# ボスドロップ
    execute if score @s General.Object.Tick matches 86 positioned ~ ~ ~ run function asset:object/2195.eclael_death_animation/tick/drop

# 終了
    execute if score @s General.Object.Tick matches 141.. run function animated_java:eclael/remove/this
