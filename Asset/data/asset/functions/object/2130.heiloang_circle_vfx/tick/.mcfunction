#> asset:object/2130.heiloang_circle_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2130/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 表示
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2130.heiloang_circle_vfx/tick/scale_start
    execute if entity @s[scores={General.Object.Tick=4}] run function asset:object/2130.heiloang_circle_vfx/tick/spin
    execute if entity @s[scores={General.Object.Tick=4}] on passengers run function asset:object/2130.heiloang_circle_vfx/tick/spin_sub
    execute if score @s General.Object.Tick = @s 2130.RemoveTimer run function asset:object/2130.heiloang_circle_vfx/tick/scale_end

# 一定間隔で回転
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $12 Const
    execute if score $Interval Temporary matches 0 run function asset:object/2130.heiloang_circle_vfx/tick/spin
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $8 Const
    execute if score $Interval Temporary matches 0 on passengers run function asset:object/2130.heiloang_circle_vfx/tick/spin_sub
    scoreboard players reset $Interval Temporary

# 消滅処理
    execute if score @s General.Object.Tick >= @s 2130.KillTimer run function asset:object/2130.heiloang_circle_vfx/tick/kill
