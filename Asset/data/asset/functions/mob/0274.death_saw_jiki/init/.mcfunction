#> asset:mob/0274.death_saw_jiki/init/
# @within asset:mob/alias/274/init

# IsBabyの1.5倍を打ち消す
    execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.006667 run attribute @s generic.movement_speed base get 100

# 最寄りのプレイヤーのほうを向く
    execute facing entity @p[gamemode=!spectator,distance=..32] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
