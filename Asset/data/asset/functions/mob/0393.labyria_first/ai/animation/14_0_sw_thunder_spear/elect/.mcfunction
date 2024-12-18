#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/
#
# 帯電方式の分岐
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/

execute if score @s AX.ThunderSpear matches 10..19 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/1
execute if score @s AX.ThunderSpear matches 20..29 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/2
execute if score @s AX.ThunderSpear matches 30..39 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/3
execute if score @s AX.ThunderSpear matches 40..49 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/4
execute if score @s AX.ThunderSpear matches 50..59 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/5
