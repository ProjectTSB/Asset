#> asset:mob/0055.hetukedah/tick/reset
#
# リセット処理
#
# @within function asset:mob/0055.hetukedah/tick/skill/**

# タグリセット
    tag @s remove 1J.Skill.OteteBeam
    tag @s remove 1J.Skill.Explosion
    tag @s remove 1J.Skill.Summon
    tag @s remove 1J.Skill.Charge
    tag @s remove 1J.Skill.FlameThrower

    tag @s remove 1J.InAction
    tag @s remove 1J.Turn.Left

# スコアリセット
    scoreboard players reset @s General.Mob.Tick
    scoreboard players reset @s 1J.LoopCount

# NoAI解除
    data merge entity @s {NoAI:0b}
