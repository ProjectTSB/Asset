#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/

# サウンド
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 2

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["RW.Marker.Aim"]}

# 警告
    function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/shape
