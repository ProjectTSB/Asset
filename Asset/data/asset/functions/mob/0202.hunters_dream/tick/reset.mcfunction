#> asset:mob/0202.hunters_dream/tick/reset
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/**

# タグを消す
    tag @s remove 5M.SkillSword
    tag @s remove 5M.SkillArrow
    tag @s remove 5M.SkillSideStep

# スコアを戻す
    scoreboard players set @s General.Mob.Tick -60
