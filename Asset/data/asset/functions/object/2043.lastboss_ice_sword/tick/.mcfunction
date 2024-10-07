#> asset:object/2043.lastboss_ice_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2043/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# しばらく回る
    execute if score @s General.Object.Tick matches 0..40 run tp @s ~ ~ ~ ~22.5 ~

# 落下する
    execute if score @s[tag=!2043.Landed] General.Object.Tick matches 40.. at @s if block ~ ~ ~ #lib:no_collision run tp @s ~ ~-1 ~

# 地面があったら止まる
    execute if score @s[tag=!2043.Landed] General.Object.Tick matches 40.. at @s unless block ~ ~ ~ #lib:no_collision run tag @s add 2043.Landed

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
