#> asset:object/2174.heiloang_death_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2174/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルで実行
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:object/2174.heiloang_death_animation/tick/event

# AJアンロード
    execute if score @s General.Object.Tick matches 99 run data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_Heiloang",Active:false}]
    execute if score @s General.Object.Tick matches 99 run function asset:datapack/set_activation_state

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
