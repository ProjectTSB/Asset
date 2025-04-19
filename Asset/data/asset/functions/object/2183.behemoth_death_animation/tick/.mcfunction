#> asset:object/2183.behemoth_death_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2183/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルで実行
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s run function asset:object/2183.behemoth_death_animation/tick/event

# 消滅処理
    kill @s[scores={General.Object.Tick=57..}]
