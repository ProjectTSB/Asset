#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/summon/no_dupe
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack

#> 被らないようにするタグ
# @private
#declare tag RW.StopSummon

# タグ
    tag @s add RW.StopSummon

# 召喚
    function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/summon/
