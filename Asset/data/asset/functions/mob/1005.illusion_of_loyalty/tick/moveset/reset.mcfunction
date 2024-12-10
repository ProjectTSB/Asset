#> asset:mob/1005.illusion_of_loyalty/tick/moveset/reset
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/**

# スコアを戻す
    scoreboard players reset @s General.Mob.Tick

# スキル
    tag @s remove RX.Skill.AimingLaser
    tag @s remove RX.Skill.AimingLaser.Advance
    tag @s remove RX.Skill.AimingLaser.Direct
    tag @s remove RX.Skill.SwordSpin
