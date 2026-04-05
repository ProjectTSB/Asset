#> asset:object/2048.wave_magic/tick/on_ground
#
#
#
# @within function asset:object/2048.wave_magic/tick/

#> Private
# @private
    #declare score_holder $Interval

# 一定間隔で自身にTagを付与
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 run tag @s add 2048.Interval
    scoreboard players reset $Interval Temporary

# 段差を超える処理
    function asset:object/2048.wave_magic/tick/go_up_and_down

# Tagがあるかつ生きていれば実行
    execute if entity @s[tag=2048.Interval] at @s if score @s ObjectID matches -2147483648..2147483647 run function asset:object/2048.wave_magic/tick/vfx
