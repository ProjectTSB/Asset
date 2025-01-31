#> asset:mob/0123.lexiel_v3/tick/hard_skill_fast_recast
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_reset

# CD変更
    scoreboard players set @s General.Mob.Tick -3

# Even削除
    tag @s remove 3F.SkillEven
