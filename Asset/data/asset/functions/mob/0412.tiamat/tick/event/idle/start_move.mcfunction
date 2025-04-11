#> asset:mob/0412.tiamat/tick/event/idle/start_move
#
# 待機
#
# @within asset:mob/0412.tiamat/tick/event/idle/

# 遷移先タイマー設定
    scoreboard players add @s BG.EventTimer 5
    execute if score @s BG.EventTimer matches 50.. run scoreboard players remove @s BG.EventTimer 50
    execute store result storage asset:temp BG.Time int 1 run scoreboard players get @s BG.EventTimer

# 移動アニメーションに遷移
    tag @s remove BG.Skill.Idle
    tag @s add BG.Skill.Move
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/2_move.m with storage asset:temp BG

# 終了
    data remove storage asset:temp BG
