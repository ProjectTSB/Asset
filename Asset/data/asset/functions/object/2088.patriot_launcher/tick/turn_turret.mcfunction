#> asset:object/2088.patriot_launcher/tick/turn_turret
#
#
#
# @within function asset:object/2088.patriot_launcher/tick/tick_active

#> prv
#> @private
    #declare score_holder $2088.TurretRotation

# 敵のいる方向の数値を取得
    execute facing entity @e[tag=Enemy.Boss,distance=..256,limit=1] eyes in overworld positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ~ ~ ~ ~ ~
    execute store result score $2088.TurretRotation Temporary run data get entity 0-0-0-0-0 Rotation[0]
        #tellraw @a [{"score":{"objective":"Temporary","name":"$2088.TurretRotation"}}]

# score範囲を0-360に丸める
    execute if score $2088.TurretRotation Temporary matches ..-1 run scoreboard players add $2088.TurretRotation Temporary 360
        #tellraw @a [{"score":{"objective":"Temporary","name":"$2088.TurretRotation"}}]

# 回転させる
    execute store result storage asset:temp args.frame int 1 run scoreboard players get $2088.TurretRotation Temporary
    execute on passengers if entity @s[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/animations/rotation/apply_frame with storage asset:temp args

# reset
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0
    scoreboard players reset $2088.TurretRotation Temporary
