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

# Tagがあれば実行
    execute if entity @s[tag=2048.Interval] run function asset:object/2048.wave_magic/tick/vfx

# 段差を超える処理

# 段差下に落ちる
    execute at @s if block ^ ^ ^ #lib:no_collision/ if block ^ ^-0.33 ^ #lib:no_collision/ run tp @s ^ ^-0.4 ^
# 段差上に上る
    execute at @s unless block ^ ^ ^ #lib:no_collision/ if block ^ ^1 ^ #lib:no_collision/ run tp @s ^ ^1 ^

# 完全に阻まれたら消滅
    execute at @s unless block ^ ^ ^ #lib:no_collision/ unless block ^ ^0.4 ^ #lib:no_collision/ unless block ^ ^-0.4 ^ #lib:no_collision/ run kill @s
