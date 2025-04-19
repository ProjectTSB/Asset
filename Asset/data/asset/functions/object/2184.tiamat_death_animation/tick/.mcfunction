#> asset:object/2184.tiamat_death_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2184/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルで実行
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] at @s run function asset:object/2184.tiamat_death_animation/tick/event

# 消滅処理
    kill @s[scores={General.Object.Tick=60..}]
