#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/shoot/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/

#> 攻撃のインターバルのスコアホルダー
# @private
    #declare score_holder $AttackInterval

# 実行時間を移す
    scoreboard players operation $AttackInterval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $AttackInterval Temporary %= $4 Const
    execute if score $AttackInterval Temporary matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/shoot/summon
    scoreboard players reset $AttackInterval Temporary
