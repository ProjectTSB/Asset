#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# 幻影にタグ付与など
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.InAction
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Move.Teleport
    scoreboard players set @e[type=wither_skeleton,scores={MobID=1005},distance=..64] General.Mob.Tick -1
