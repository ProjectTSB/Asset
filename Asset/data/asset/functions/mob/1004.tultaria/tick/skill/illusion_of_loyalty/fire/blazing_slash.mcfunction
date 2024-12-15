#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/fire/blazing_slash
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# タグ付与など
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.InAction
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.BlazingSlash
    scoreboard players set @e[type=wither_skeleton,scores={MobID=1005},distance=..64] General.Mob.Tick -1
