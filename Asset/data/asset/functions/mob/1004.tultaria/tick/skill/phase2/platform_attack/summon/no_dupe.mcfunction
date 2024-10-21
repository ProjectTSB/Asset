#> asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/no_dupe
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/tick

#> 被らないようにするタグ
# @private
#declare tag RW.StopSummon

# タグ
    tag @s add RW.StopSummon

# 召喚
    function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
