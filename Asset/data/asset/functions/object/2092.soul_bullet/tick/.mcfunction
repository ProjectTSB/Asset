#> asset:object/2092.soul_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2092/tick

#> Private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle soul ~ ~ ~ 0.25 0.25 0.25 0 4 normal @a

# 一度止まる
    execute if entity @s[scores={General.Object.Tick=40}] run data modify storage asset:context this.Speed set value 0

# プレイヤーの方を見て動き出す
    execute if entity @s[scores={General.Object.Tick=80}] run tp @s ~ ~ ~ facing entity @p eyes
    execute if entity @s[scores={General.Object.Tick=80}] run data modify storage asset:context this.Speed set value 1
    execute if entity @s[scores={General.Object.Tick=80}] run data modify storage asset:context this.MovePerStep set value 0.8

# 定期的に追加で演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    #execute if score $Interval Temporary matches 0 run playsound ogg:mob.vex.idle1 hostile @a ~ ~ ~ 0.8 0.5 0
    #execute if score $Interval Temporary matches 0 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.15 1.8 0
    scoreboard players reset $Interval Temporary

# 継承
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
