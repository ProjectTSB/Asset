#> asset:artifact/1034.eiya/trigger/schedule
#
# ループ処理部
#
# @within function
#   asset:artifact/1034.eiya/trigger/3.main
#   asset:artifact/1034.eiya/trigger/schedule

# ループ
    execute if entity @p[scores={SQ.Count=1..}] run schedule function asset:artifact/1034.eiya/trigger/schedule 1t replace


# 斬撃が9段目で、SkillCooldownが0の時リセット
    execute as @a[scores={SQ.Count=9..}] unless entity @s[scores={SQ.SkillCooldown=1..}] run function asset:artifact/1034.eiya/trigger/reset

# WaitingTimeとSkillCooldownを減らす
    execute as @a[scores={SQ.WaitingTime=0..}] run scoreboard players remove @s SQ.WaitingTime 1
    execute as @a[scores={SQ.SkillCooldown=0..}] run scoreboard players remove @s SQ.SkillCooldown 1

# WaitingTimeが0以下のプレイヤーのスコアをリセット
    execute as @a[scores={SQ.WaitingTime=..0}] run function asset:artifact/1034.eiya/trigger/reset

# SkillCooldownのリセット
    execute as @a[scores={SQ.SkillCooldown=..0}] run scoreboard players reset @s SQ.SkillCooldown