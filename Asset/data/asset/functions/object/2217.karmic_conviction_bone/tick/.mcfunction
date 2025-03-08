#> asset:object/2217.karmic_conviction_bone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2217/tick

#> Private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転
    tp @s ~ ~ ~ ~40 ~

# 一定tick毎にダメージ
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 at @s run function asset:object/2217.karmic_conviction_bone/tick/damage
    scoreboard players reset $Interval Temporary

# 消滅 & 弾召喚
    execute if score @s General.Object.Tick matches 30.. at @s run function asset:object/2217.karmic_conviction_bone/tick/kill
