#> asset:mob/0410.heiloang/tick/event/offering/end
#
# ソウルオファリング
#
# @within asset:mob/0410.heiloang/tick/event/offering/

# タグ消去
    tag @s remove BE.Skill.Offering

# 大技開始
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.FinalFlare
