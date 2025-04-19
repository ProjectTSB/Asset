#> asset:object/2174.heiloang_death_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2174/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルで実行
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:object/2174.heiloang_death_animation/tick/event

# ボスドロップ配置
    execute if entity @s[scores={General.Object.Tick=120}] run function asset:object/2174.heiloang_death_animation/tick/summon_bossdrop

# 消滅処理
    kill @s[scores={General.Object.Tick=120..}]
