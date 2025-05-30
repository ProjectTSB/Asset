#> asset:mob/0055.hetukedah/tick/skill/charge/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/charge/windup

# しばらくこっち見る
    execute if score @s General.Mob.Tick matches 0..40 facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# 突進
    execute if score @s General.Mob.Tick matches 40..50 run function asset:mob/0055.hetukedah/tick/skill/charge/move_forward

# 爆発
    execute if score @s General.Mob.Tick matches 50 run function asset:mob/0055.hetukedah/tick/skill/charge/end

# ハードだとループする
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={1J.LoopCount=..2}] General.Mob.Tick matches 60 run scoreboard players set @s General.Mob.Tick 25

# リセット
    execute if score @s General.Mob.Tick matches 70.. run function asset:mob/0055.hetukedah/tick/reset
