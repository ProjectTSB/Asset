#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack_check
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/1.main

# 一定間隔で実行
    scoreboard players operation $Temp Temporary = @s 93.AnimationTimer
    scoreboard players operation $Temp Temporary %= $6 Const
    execute unless score $Temp Temporary matches 0 run return run scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp Temporary

# 攻撃
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack
