#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
#
# 召喚処理。狙い撃ちで落としたいときにも使う
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/**

# 召喚
    data modify storage api: Argument.ID set value 2041
    function api:object/summon
