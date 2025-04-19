#> asset:object/2195.eclael_death_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2195/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルで実行
    execute as @e[type=item_display,tag=93.ModelRoot.Death] at @s run function asset:object/2195.eclael_death_animation/tick/event

# AJアンロード
    execute if score @s General.Object.Tick matches 142 run data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_eclael",Active:false}]
    execute if score @s General.Object.Tick matches 142 run function asset:datapack/set_activation_state

# 消滅処理
    kill @s[scores={General.Object.Tick=142..}]
