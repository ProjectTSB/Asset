#> asset:mob/0437.lawless_iron_doll/tick/base_move/walk/tick
#
# 歩行中の処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# レーザー攻撃
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.5
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.6
    scoreboard players reset $Interval Temporary

# まっすぐ前に歩く
    execute rotated ~ 0 run tp @s ^ ^ ^0.2
