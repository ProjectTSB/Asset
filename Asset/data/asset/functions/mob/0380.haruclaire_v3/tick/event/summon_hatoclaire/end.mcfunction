#> asset:mob/0380.haruclaire_v3/tick/event/summon_hatoclaire/end
#
# 登場
#
# @within asset:mob/0380.haruclaire_v3/tick/event/summon_hatoclaire/

# タグ消去
    tag @s remove AK.Skill.SummonHato
    tag @a[tag=AK.MainTarget,distance=..80,limit=1] remove AK.MainTarget

# アイスクリメーションお披露目
    function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation_first
