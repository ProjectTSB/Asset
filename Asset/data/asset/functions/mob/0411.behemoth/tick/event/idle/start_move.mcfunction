#> asset:mob/0411.behemoth/tick/event/idle/start_move
#
# 待機
#
# @within asset:mob/0411.behemoth/tick/event/idle/

# 遷移先タイマー設定
    scoreboard players add @s BF.EventTimer 5
    execute if score @s BF.EventTimer matches 45.. run scoreboard players remove @s BF.EventTimer 45
    execute store result storage asset:temp BF.Time int 1 run scoreboard players get @s BF.EventTimer

# 移動アニメーションに遷移
    tag @s remove BF.Skill.Idle
    tag @s add BF.Skill.Move
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/2_move.m with storage asset:temp BF

# 終了
    data remove storage asset:temp BF
