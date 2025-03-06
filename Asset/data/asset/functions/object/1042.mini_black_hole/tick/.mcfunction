#> asset:object/1042.mini_black_hole/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1042/tick

# RemainingRangeが1ならLandingを付与
    execute if data storage asset:context this{RemainingRange:1} run tag @s add 1042.Landing

# 非着弾前の処理
    execute unless entity @s[tag=1042.Landing] run function asset:object/1042.mini_black_hole/tick/flying/

# 着弾後の処理
    execute if entity @s[tag=1042.Landing] run function asset:object/1042.mini_black_hole/tick/landing/

# 着弾してなければsuper.tick
    execute unless entity @s[tag=1042.Landing] at @s run function asset:object/super.tick
