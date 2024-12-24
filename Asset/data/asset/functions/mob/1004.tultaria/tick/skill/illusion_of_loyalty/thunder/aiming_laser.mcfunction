#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/thunder/aiming_laser
#
# 号令
#
# @within function asset:mob/1004.tultaria/tick/skill/**

# タグ付与など
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.InAction
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.AimingLaser
    scoreboard players set @e[type=wither_skeleton,scores={MobID=1005},distance=..64] General.Mob.Tick -1
