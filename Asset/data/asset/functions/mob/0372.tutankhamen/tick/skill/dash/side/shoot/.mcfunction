#> asset:mob/0372.tutankhamen/tick/skill/dash/side/shoot/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/side/

#> 攻撃のインターバルのスコアホルダー
# @private
    #declare score_holder $AttackInterval

# 実行時間を移す
    scoreboard players operation $AttackInterval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $AttackInterval Temporary %= $4 Const
    execute if score $AttackInterval Temporary matches 0 run function asset:mob/0372.tutankhamen/tick/skill/dash/side/shoot/summon
    scoreboard players reset $AttackInterval Temporary
