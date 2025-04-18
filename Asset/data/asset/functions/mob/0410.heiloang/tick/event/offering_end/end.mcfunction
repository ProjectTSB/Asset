#> asset:mob/0410.heiloang/tick/event/offering_end/end
#
# ソウルオファリング
#
# @within asset:mob/0410.heiloang/tick/event/offering_end/

# タグ消去
    tag @s remove BE.Skill.OfferingEnd

# 大技開始
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.FinalFlare
