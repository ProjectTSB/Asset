#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/sword_spin/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/**

#> タグ
# @private
    #declare tag RX.Skill.SwordSpin

# 幻影に剣を付ける
    execute as @e[type=wither_skeleton,scores={MobID=1005},distance=..64,sort=furthest,limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/sword_spin/summon

# 幻影にタグ付与など
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.SwordSpin
    scoreboard players set @e[type=wither_skeleton,scores={MobID=1005},distance=..64] General.Mob.Tick 0
