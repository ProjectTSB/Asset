#> asset:object/1061.azure_jelly/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1061/tick

#> Private
# @private
    #declare score_holder $UserID

# OwnerにTag付与
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1061.Owner

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# インターバル
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $48 Const

# 常時演出
    particle dust 0.267 0.729 0.945 0.9 ~ ~ ~ 0.4 0.6 0.4 0 1 normal @a

# 攻撃
    execute if score $Interval Temporary matches 0 run function asset:object/1061.azure_jelly/tick/attack/

# playsound
    execute if score $Interval Temporary matches 0..3 run function asset:object/1061.azure_jelly/tick/sound

# 移動方向設定
    execute if score $Interval Temporary matches 0 run function asset:object/1061.azure_jelly/tick/turn/

# 角度
    execute if score $Interval Temporary matches 0 at @s run function asset:object/1061.azure_jelly/tick/angle/init
    execute at @s run function asset:object/1061.azure_jelly/tick/angle/

# 移動
    execute at @s run function asset:object/1061.azure_jelly/tick/move/

    #execute at @s run particle flame ^ ^ ^1 0 0 0 0 1

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $Interval Temporary
    tag @p[tag=1061.Owner] remove 1061.Owner

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=480..}] run function asset:object/1061.azure_jelly/tick/kill
