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
    execute if entity @s[scores={General.Object.Tick=74..}] run function asset:object/2031.giant_pumpkin/tick/high_speed_spin

# Speedを変更
    execute if entity @s[scores={General.Object.Tick=74}] run data modify storage asset:context this.Speed set value 1

# 演出
    execute if entity @s[scores={General.Object.Tick=74..}] run particle dust 1 0.6 0 1.3 ~ ~ ~ 0.8 0.8 0.8 0 3 normal @a
    execute if entity @s[scores={General.Object.Tick=74..}] run particle dust 0.851 0 1 1.3 ~ ~ ~ 0.8 0.8 0.8 0 3 normal @a
    execute if entity @s[scores={General.Object.Tick=74..}] run particle block carved_pumpkin ~ ~0.1 ~ 0.8 0 0.8 0 10 normal @a

# 継承して動かす
    function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

#kill @e[type=item_display]
