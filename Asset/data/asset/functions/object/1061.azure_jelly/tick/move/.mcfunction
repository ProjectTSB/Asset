#> asset:object/1061.azure_jelly/tick/move/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# そもそも: 完全に埋まってたら少しずつ上に行ってreturn
    execute unless function asset:object/1061.azure_jelly/predicate/no_collision run return run tp @s ~ ~0.1 ~

# 速度付きで前方が安全か判定してから進む
# ちょっとでも軽くしたいな～ってことでreturnで実行数がそんなに増えないようにする
    execute if score $Interval Temporary matches 00..03 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.08}
    execute if score $Interval Temporary matches 04..08 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.10}
    execute if score $Interval Temporary matches 09..13 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.15}
    execute if score $Interval Temporary matches 14..18 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.20}
    execute if score $Interval Temporary matches 19..22 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.25}
    execute if score $Interval Temporary matches 23..24 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.30}

    execute if score $Interval Temporary matches 25..26 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.30}
    execute if score $Interval Temporary matches 27..30 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.25}
    execute if score $Interval Temporary matches 31..35 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.20}
    execute if score $Interval Temporary matches 36..40 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.15}
    execute if score $Interval Temporary matches 41..45 run return run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.10}
    execute if score $Interval Temporary matches 46..49 run function asset:object/1061.azure_jelly/tick/move/speed_multiplier.m {Speed:0.08}
