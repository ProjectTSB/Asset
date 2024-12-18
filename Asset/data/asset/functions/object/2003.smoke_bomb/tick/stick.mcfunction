#> asset:object/2003.smoke_bomb/tick/stick
#
# くっついた後の処理
#
# @within function asset:object/2003.smoke_bomb/tick/

#> temp
# @private
    #declare score_holder $2003.Temp

# その場で回転する
    execute at @s run tp @s ~ ~ ~ ~2 0

# 円
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-0.0 ^0.0 ^4.0 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^1.531 ^0.0 ^3.696 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^2.828 ^0.0 ^2.828 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^3.696 ^0.0 ^1.531 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^4.0 ^0.0 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^3.696 ^0.0 ^-1.531 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^2.828 ^0.0 ^-2.828 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^1.531 ^0.0 ^-3.696 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-0.0 ^0.0 ^-4.0 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-1.531 ^0.0 ^-3.696 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-2.828 ^0.0 ^-2.828 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-3.696 ^0.0 ^-1.531 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-4.0 ^0.0 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-3.696 ^0.0 ^1.531 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-2.828 ^0.0 ^2.828 0.0 0.0 0.0 0.5 1 force @a[distance=..32]
    execute at @s run particle dust 1.0 0.4775 0.05 1 ^-1.531 ^0.0 ^3.696 0.0 0.0 0.0 0.5 1 force @a[distance=..32]

# 10Tickごとに予告音を出す
    scoreboard players operation $2003.Temp Temporary = @s General.Object.Tick
    scoreboard players operation $2003.Temp Temporary %= $10 Const
    execute if score $2003.Temp Temporary matches 0 as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run playsound block.note_block.bit hostile @s ~ ~ ~ 1 0

# スコアリセット
    scoreboard players reset $2003.Temp Temporary
