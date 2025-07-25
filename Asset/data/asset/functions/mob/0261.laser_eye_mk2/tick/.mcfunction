#> asset:mob/0261.laser_eye_mk2/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/261/tick

# Readyタグがないとき
    # @pを追尾
        execute if entity @s[tag=!79.Ready] facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

    # プレイヤーが近くにいないなら前進
        execute if entity @s[tag=!79.Ready] at @s unless entity @p[gamemode=!spectator,distance=..8] run tp @s ^ ^ ^0.1 ~ ~

    # プレイヤーがすごく近いかつ、後ろが壁でなければ後退
        execute if entity @s[tag=!79.Ready] at @s if entity @p[gamemode=!spectator,distance=..5] anchored eyes if block ^ ^ ^-1 #lib:no_collision anchored feet run tp @s ^ ^ ^-0.08 ~ ~

# タグを持っているならその場でプレイヤー追尾
    execute if entity @s[tag=79.Ready] facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# プレイヤーが一定の距離にいたらスコアを付与
    execute if entity @p[gamemode=!spectator,distance=..8] unless score @s General.Mob.Tick matches -2147483648..2147483647 run scoreboard players set @s General.Mob.Tick 0

# スコアを持っているなら実行
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0261.laser_eye_mk2/tick/ready
