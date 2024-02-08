#> asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/1.charge_sound_calc
#
# チャージ音（計算処理）
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/

# スコア調整
    scoreboard players operation $A5.Temp A5.AnimationTick = @s A5.AnimationTick
    scoreboard players remove $A5.Temp A5.AnimationTick 11
    execute store result storage asset:temp A5.Num float 0.05 run scoreboard players operation $A5.Temp A5.AnimationTick += $10 Const

# マクロ起動
    function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/2.charge_sound.m with storage asset:temp A5

# リセット
    scoreboard players reset $A5.Temp A5.AnimationTick
    data remove storage asset:temp A5