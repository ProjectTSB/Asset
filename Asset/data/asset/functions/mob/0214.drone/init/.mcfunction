#> asset:mob/0214.drone/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/214/init

# 初期向き設定
    execute facing entity @e[type=marker,tag=5X.Centre,distance=..128,limit=1] eyes rotated ~-90 0 run tp @s ~ ~ ~ ~ ~

# 発射母機のMobUUID設定(modifier適用のため)
    execute store result storage asset:context this.MobUUID int 1 run scoreboard players get @e[tag=Enemy.Boss,scores={MobID=213},limit=1] MobUUID

# 見た目召喚
    execute rotated as @s as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:mob/0214.drone/init/summon_model.m with storage asset:temp Args

# reset
    data remove storage asset:temp Args
