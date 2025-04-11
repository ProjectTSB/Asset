#> asset:mob/0327.eclael/tick/debug/interrupt
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/327/tick

# 行動停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# デバッグ用強制再生
    scoreboard players set @s 93.AnimationTimer 0
    tag @s add 93.Skill.Beam
    # tag @s add 93.Phase.HardLatter
    # tag @s add 93.Temp.MoveToLeft
