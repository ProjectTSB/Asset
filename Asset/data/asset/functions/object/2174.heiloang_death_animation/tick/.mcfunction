#> asset:object/2174.heiloang_death_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2174/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルで実行
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:object/2174.heiloang_death_animation/tick/event

# 消滅処理
    execute if score @s General.Object.Tick matches 99 run datapack disable "file/AJ_Heiloang.zip"
    kill @s[scores={General.Object.Tick=100..}]
