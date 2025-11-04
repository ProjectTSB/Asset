#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/
#
# 雷のカーテンのメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill_branch

# 予備動作
    execute if entity @s[scores={General.Mob.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..30] ~ ~ ~ 2 1.5 1
    execute if entity @s[scores={General.Mob.Tick=0..19}] facing entity @p[gamemode=!spectator,distance=..50] eyes rotated ~ 0 positioned ^ ^0.2 ^0.8 run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/ready

# 発動
    execute if entity @s[scores={General.Mob.Tick=20}] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/active

# リセット
    execute if entity @s[scores={General.Mob.Tick=60..}] run function asset:mob/0078.messenger_of_thunder/tick/skill/reset
