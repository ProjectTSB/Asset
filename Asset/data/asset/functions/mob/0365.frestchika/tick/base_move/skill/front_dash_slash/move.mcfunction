#> asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/move
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/

# 壁があったら移動をやめる
    execute at @s if function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ~ ~ ~ ~ 0
    execute at @s if function asset:mob/0365.frestchika/tick/base_move/common/check_collide run scoreboard players set @s General.Mob.Tick 30
    execute at @s if function asset:mob/0365.frestchika/tick/base_move/common/check_collide run return fail

# 前に移動
    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-50 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^1 ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.5
    scoreboard players reset $Interval Temporary
