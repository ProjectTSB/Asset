#> asset:mob/0261.laser_eye_mk2/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/261/tick

# プレイヤーが適正距離にいたらReadyタグを付与
    execute unless entity @s[tag=79.Ready] if entity @p[gamemode=!spectator,distance=7..10] run tag @s add 79.Ready

# 適正距離にいない場合、フィールドで遠近の情報を管理する
    execute unless entity @s[tag=79.Ready] if entity @p[gamemode=!spectator,distance=..7] run data modify storage asset:context this.Distance set value "Near"
    execute unless entity @s[tag=79.Ready] unless entity @p[gamemode=!spectator,distance=..10] run data modify storage asset:context this.Distance set value "Far"

# Readyタグがなければsuper.tick
    execute unless entity @s[tag=79.Ready] run function asset:mob/super.tick

# Readyタグがない && プレイヤーが近い && 後ろにブロックがあって後退できない なら発射準備に移る
    execute if entity @s[tag=!79.Ready] at @s if data storage asset:context this{Distance:"Near"} anchored eyes positioned ^ ^ ^ unless block ^ ^ ^-1 #lib:no_collision/ anchored feet at @s run tag @s add 79.Ready

# Readyタグがあるときは発射準備
    execute if entity @s[tag=79.Ready] run function asset:mob/0261.laser_eye_mk2/tick/ready

# 毎tickのattribute変更を対策するために前tickの距離の情報を保存しておく
    data modify storage asset:context this.PreDistance set from storage asset:context this.Distance

# リセット
    data remove storage asset:context this.Distance
