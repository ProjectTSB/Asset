#> asset:mob/0341.louvert/summon/3.init
#
# 召喚時の初期化処理
#
# @within function asset:mob/0341.louvert/summon/2.summon

# スコア初期化
    scoreboard players set @s 9H.AnimationTick 0
    scoreboard players set @s 9H.AnimationNum 121
    scoreboard players set @s 9H.SkillSelect 0
    scoreboard players set @s 9H.HPPer 100
    scoreboard players set @s 9H.FalterCount 0
    scoreboard players set @s 9H.SoulBombHard 0

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:louvert/summon

# teleport_durationを設定
    execute positioned ~ ~99 ~ as @e[type=item_display,distance=..1] run data modify entity @s teleport_duration set value 1