#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/fall_spear/kill
#
# 槍をキルする
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/

tag @s remove 2012.HardElect
tag @s remove 2012.HardElectCast
tag @s remove 2012.NormalElect
tag @s remove 2012.NormalElectCast
tag @s add 2012.Kill

scoreboard players set @s General.Object.Tick 0
