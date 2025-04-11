#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/laser/
#
# 一定周期でレーザーを放つ
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
# Tick間隔、後半になるにつれ派手になる。
    execute if score @s General.Mob.Tick matches 460..500 run scoreboard players operation $Interval Temporary %= $5 Const
    execute if score @s General.Mob.Tick matches 500..540 run scoreboard players operation $Interval Temporary %= $4 Const
    execute if score @s General.Mob.Tick matches 540..580 run scoreboard players operation $Interval Temporary %= $3 Const
    execute if score @s General.Mob.Tick matches 580..620 run scoreboard players operation $Interval Temporary %= $2 Const
# レーザー
    execute if score $Interval Temporary matches 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/laser/spread
# インターバルリセット
    scoreboard players reset $Interval Temporary
