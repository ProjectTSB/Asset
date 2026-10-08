#> asset:object/1192.satelite_drop/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1192/tick

#> Private
# @private
    #declare score_holder $UserID

# Tick加算
    scoreboard players remove @s[tag=1192.Idle] General.Object.Tick 1

# 1192.Idleの有無で処理を分岐
    #あるならプレイヤーの周りを回転
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute if entity @s[tag=1192.Idle] as @a if score @s UserID = $UserID Temporary at @s as @e[type=marker,tag=this,limit=1] run function asset:object/1192.satelite_drop/tick/idle/

    #ないならsuper.tick
    execute unless entity @s[tag=1192.Idle] run function asset:object/super.tick

# 演出
    particle dust 0.2 0.4 0.8 0.5 ~ ~ ~ 0.01 0.01 0.01 1 5
    particle dust 0.722 1 0.984 0.25 ~ ~ ~ 0.05 0.05 0.05 1 15

# リセット
    scoreboard players reset $UserID Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=..0}]
