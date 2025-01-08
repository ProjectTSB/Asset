#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/
#
# 自分の左右に召喚
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/

# 召喚
    execute facing entity @p feet rotated ~ 0 positioned ^5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/summon
    execute facing entity @p feet rotated ~ 0 positioned ^-5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/summon
