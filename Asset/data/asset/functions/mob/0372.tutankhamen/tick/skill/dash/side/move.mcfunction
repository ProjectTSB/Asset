#> asset:mob/0372.tutankhamen/tick/skill/dash/side/move
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/side/

# 壁があったら移動をやめる
    execute at @s if function asset:mob/0372.tutankhamen/tick/skill/common/check_collide/forward/1.0 run tp @s ~ ~ ~ ~ 0
    execute at @s if function asset:mob/0372.tutankhamen/tick/skill/common/check_collide/forward/1.0 run scoreboard players set @s General.Mob.Tick 30
    execute at @s if function asset:mob/0372.tutankhamen/tick/skill/common/check_collide/forward/1.0 run return 0

# 横に移動
    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-150 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^1 ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.5
    scoreboard players reset $Interval Temporary
