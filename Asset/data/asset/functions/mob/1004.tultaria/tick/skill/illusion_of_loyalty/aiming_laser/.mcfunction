#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/aiming_laser/
#
# 号令
#
# @within function asset:mob/1004.tultaria/tick/skill/**

#> タグ
# @private
    #declare tag RX.Skill.AimingLaser

# タグ付与など
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.AimingLaser
    scoreboard players set @e[type=wither_skeleton,scores={MobID=1005},distance=..64] General.Mob.Tick 0
