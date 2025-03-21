#> asset:mob/0055.hetukedah/tick/skill/flamethrower/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/windup

# 予備動作その2
    execute if score @s[tag=1J.Turn.Left] General.Mob.Tick matches 1..15 run tp @s ~ ~ ~ ~5 0
    execute if score @s[tag=!1J.Turn.Left] General.Mob.Tick matches 1..15 run tp @s ~ ~ ~ ~-5 0

# こっち見る
    execute if score @s[tag=1J.Turn.Left] General.Mob.Tick matches 16..40 facing entity @p[gamemode=!spectator,distance=..64] eyes run tp @s ~ ~ ~ ~75 0
    execute if score @s[tag=!1J.Turn.Left] General.Mob.Tick matches 16..40 facing entity @p[gamemode=!spectator,distance=..64] eyes run tp @s ~ ~ ~ ~-75 0

# スタート
    execute if score @s General.Mob.Tick matches 40..100 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/shoot

# リセット
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/0055.hetukedah/tick/reset
