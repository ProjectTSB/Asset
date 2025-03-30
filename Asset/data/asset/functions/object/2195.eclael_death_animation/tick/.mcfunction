#> asset:object/2195.eclael_death_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2195/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルで実行
    execute as @e[type=item_display,tag=93.ModelRoot.Death] at @s run function asset:object/2195.eclael_death_animation/tick/event

# 消滅処理
    execute if score @s General.Object.Tick matches 142 run datapack disable "file/AJ_Eclael.zip"
    kill @s[scores={General.Object.Tick=142..}]
