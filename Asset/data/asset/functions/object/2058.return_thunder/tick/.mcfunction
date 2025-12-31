#> asset:object/2058.return_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2058/tick

#> Private
# @private
    #declare score_holder $Interval

# 演出とIntervalTagを一定間隔で付与
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run tag @s add 2058.Interval
    execute if score $Interval Temporary matches 0 rotated ~ 0 run function asset:object/2058.return_thunder/tick/thunder
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 途中で一時停止し、プレイヤーの方へ方向転
    execute if entity @s[scores={General.Object.Tick=40}] run data modify storage asset:context this.MovePerStep set value 0
    execute if entity @s[scores={General.Object.Tick=60}] facing entity @p[gamemode=!spectator,distance=..50] feet run tp @s ~ ~ ~ ~ ~
    execute if entity @s[scores={General.Object.Tick=60}] run data modify storage asset:context this.MovePerStep set value 1

# 継承
    execute at @s run function asset:object/super.tick

# リセット
    tag @s[tag=2058.Interval] remove 2058.Interval

# 消滅処理
    kill @s[scores={General.Object.Tick=120..}]
