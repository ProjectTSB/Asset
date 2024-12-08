#> asset:mob/1005.illusion_of_loyalty/tick/moveset/reset
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/**

# スコアを戻す
    scoreboard players set @s General.Mob.Tick -2

# スキル
    tag @s remove RX.Skill.AimingLasser
    tag @s remove RX.Skill.AimingLasser.Advance
    tag @s remove RX.Skill.AimingLasser.Direct
