#> asset:object/2031.giant_pumpkin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2031/tick

#> Private
# @private
    #declare score_holder $Interval
    #declare score_holder $Interval2

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転が加速しきるまで
    execute if entity @s[scores={General.Object.Tick=..73}] run function asset:object/2031.giant_pumpkin/tick/begining_spin

# 高速回転
    execute if entity @s[tag=2031.HighSpeedSpinning] run function asset:object/2031.giant_pumpkin/tick/high_speed_spin

# 継承して動かす
    function asset:object/super.tick

# リセット
    tag @s[tag=2031.BeginningSpin] remove 2031.BeginningSpin

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

#kill @e[type=item_display]
