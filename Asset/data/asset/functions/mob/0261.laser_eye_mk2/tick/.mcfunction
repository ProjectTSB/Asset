#> asset:mob/0261.laser_eye_mk2/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/261/tick

# プレイヤーが一定の距離にいたらReadyタグを付与
    execute unless entity @s[tag=79.Ready] if entity @p[gamemode=!spectator,distance=..8] run tag @s add 79.Ready

# Readyタグがないとき
    # @pを追尾
        execute if entity @s[tag=!79.Ready] facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

    # プレイヤーが近くにいないなら前進
        execute if entity @s[tag=!79.Ready] at @s unless entity @p[gamemode=!spectator,distance=..8] run tp @s ^ ^ ^0.1 ~ ~

    # プレイヤーがすごく近いかつ、後ろが壁でなければ後退
        execute if entity @s[tag=!79.Ready] at @s if entity @p[gamemode=!spectator,distance=..5] anchored eyes if block ^ ^ ^-1 #lib:no_collision anchored feet run tp @s ^ ^ ^-0.08 ~ ~

# Readyタグがあるときは発射準備
    execute if entity @s[tag=79.Ready] run function asset:mob/0261.laser_eye_mk2/tick/ready
