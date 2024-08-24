#> asset:mob/1020.throwing_sword/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1020.throwing_sword/tick/1.trigger

# Tick加算
    scoreboard players add @s SC.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s SC.Tick

# 射撃
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/1020.throwing_sword/tick/damage_and_sound

# 移動
    function asset:mob/1020.throwing_sword/tick/homing_move

# 消える
    execute if score @s SC.Tick matches 200.. run function asset:mob/1020.throwing_sword/tick/break