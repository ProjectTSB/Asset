#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder/1
#
# 雷落としのメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/3.skill_branch

# AECを召喚
    execute if entity @s[scores={26.Tick=0}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/2.thunder_point1

# 演出
    scoreboard players operation $Interval Temporary = @s 26.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,limit=7] positioned ~ ~0.3 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/circle
    scoreboard players reset $Interval Temporary

# AECの位置に雷を落とす
    execute if entity @s[scores={26.Tick=22}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/4.attack
    execute if entity @s[scores={26.Tick=24}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/4.attack
    execute if entity @s[scores={26.Tick=26}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/4.attack
    execute if entity @s[scores={26.Tick=28}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/4.attack
    execute if entity @s[scores={26.Tick=30}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/4.attack

# ハードかつ体力半分以下で間に挟む形で2本分の雷を追加
    execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=27}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/4.attack
    execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=29}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/4.attack

# リセット
    execute if entity @s[scores={26.Tick=30..}] run function asset:mob/0078.messenger_of_thunder/tick/reset
