#> asset:effect/0605.aurora_corrosion/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0605.aurora_corrosion/_/tick

#> Private
# @private
    #declare score_holder $Temp

# vfx
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.2 ~ 0.4 0.5 0.4 1 2 normal

# 定期的にMPを割合で減少させる
    scoreboard players operation $Temp Temporary = @s GT.Tick
    scoreboard players operation $Temp Temporary %= $40 Const
    execute if score $Temp Temporary matches 0 run function asset:effect/0605.aurora_corrosion/tick/mp_reduce
    scoreboard players reset $Temp Temporary

# 効果時間の処理
    scoreboard players add @s GT.Tick 1
