#> asset:mob/1004.tultaria/tick/skill/platform_attack/no_dupe
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/**

#> 被らないようにするタグ
# @private
#declare tag RW.StopSummon

# タグ
    tag @s add RW.StopSummon

# 召喚
    function asset:mob/1004.tultaria/tick/skill/platform_attack/red
