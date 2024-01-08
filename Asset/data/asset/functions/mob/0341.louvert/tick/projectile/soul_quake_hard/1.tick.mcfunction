#> asset:mob/0341.louvert/tick/projectile/soul_quake_hard/1.tick
#
# ソウルクエイクTick
#
# @within function asset:mob/0341.louvert/tick/2.tick

# スコア上昇
    scoreboard players add @s 9H.ProjectileTick 1

# 追尾
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-4 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.35 ~ ~

# VFX
    # スコア調整
    scoreboard players operation $9H.Temp 9H.ProjectileTick = @s 9H.ProjectileTick
    scoreboard players operation $9H.Temp 9H.ProjectileTick %= $8 Const
    execute if score @s 9H.ProjectileTick matches ..120 if score $9H.Temp 9H.ProjectileTick matches 1 positioned ~ ~2 ~ run function asset:mob/0341.louvert/tick/projectile/soul_quake/0.summon

# キル
    execute if score @s 9H.ProjectileTick matches 121 run kill @s

# リセット
    scoreboard players reset $9H.Temp 9H.ProjectileTick