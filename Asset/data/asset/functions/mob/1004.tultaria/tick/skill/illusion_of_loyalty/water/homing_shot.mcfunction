#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/homing_shot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/homing_shot/tick

# 幻影にタグ付与など
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.InAction
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.HomingShot
    scoreboard players set @e[type=wither_skeleton,scores={MobID=1005},distance=..64] General.Mob.Tick -1
