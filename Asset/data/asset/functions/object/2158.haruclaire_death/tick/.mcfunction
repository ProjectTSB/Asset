#> asset:object/2158.haruclaire_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2158/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if score @s General.Object.Tick matches 1 at @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    execute if score @s General.Object.Tick matches 5 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 5 run data modify entity @s transformation.scale set value [2f, 3.2f, 2f]
    execute if score @s General.Object.Tick matches 100..120 run particle firework ~ ~3 ~ 3 3 3 0 3

# モデルで実行
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] at @s run function asset:object/2158.haruclaire_death/tick/event

# 消滅処理
    execute if score @s General.Object.Tick matches 100 run data modify entity @s transformation.scale set value [0f, 0f, 0f]

# AJアンロード
    execute if score @s General.Object.Tick matches 100 run data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_haruclaire_v3",Active:false}]
    execute if score @s General.Object.Tick matches 100 run function asset:datapack/set_activation_state

    kill @s[scores={General.Object.Tick=121..}]
