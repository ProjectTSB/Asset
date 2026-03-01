#> asset:object/2241.lawless_slashshot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2241/tick

#> Private
# @private
    #declare score_holder $Interval

# GeneralのTickは別で加算する
    scoreboard players add @s General.Object.Tick 1

# 飛距離が0になったら、独自のTick加算を開始
    scoreboard players add @s[tag=2241.RangeOver] 2241.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide neutral @a ~ ~ ~ 0.3 1
    scoreboard players reset $Interval Temporary

# 縮んでいく
    execute if score @s 2241.Tick matches 1 run function asset:object/2241.lawless_slashshot/tick/shrink

# 消滅処理
    kill @s[scores={2241.Tick=3..}]

# Super
    function asset:object/super.tick
