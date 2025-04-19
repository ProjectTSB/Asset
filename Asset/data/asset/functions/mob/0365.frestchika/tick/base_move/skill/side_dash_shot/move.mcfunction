#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/move
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/

# 壁があったら移動をやめる
    execute at @s if function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ~ ~ ~ ~ 0
    execute at @s if function asset:mob/0365.frestchika/tick/base_move/common/check_collide run scoreboard players set @s General.Mob.Tick 30
    execute at @s if function asset:mob/0365.frestchika/tick/base_move/common/check_collide run return fail

# 横に移動
    execute if entity @s[tag=A5.Dash.Left] if block ^1 ^ ^ #asset:mob/0365.frestchika/no_collision facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^1.0 ^ ^ ~ ~
    execute if entity @s[tag=A5.Dash.Right] if block ^-1 ^ ^ #asset:mob/0365.frestchika/no_collision facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^-1.0 ^ ^ ~ ~
#    execute if entity @s[tag=A5.Dash.Left,tag=!A5.DashSkill.DelayLaser] facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^1.0 ^ ^ ~ ~
#    execute if entity @s[tag=A5.Dash.Right,tag=!A5.DashSkill.DelayLaser] facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^-1.0 ^ ^ ~ ~
#    execute if entity @s[tag=A5.Dash.Left,tag=A5.DashSkill.DelayLaser] run tp @s ^1.0 ^ ^ ~ ~
#    execute if entity @s[tag=A5.Dash.Right,tag=A5.DashSkill.DelayLaser] run tp @s ^-1.0 ^ ^ ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.5
    scoreboard players reset $Interval Temporary
