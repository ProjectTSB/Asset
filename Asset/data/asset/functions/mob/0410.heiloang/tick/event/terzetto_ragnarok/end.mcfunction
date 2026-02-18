#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/end
#
# テルツェット・ラグナレク
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/

# タグ消去
    tag @s remove BE.Skill.Ter.Rag
    tag @a[tag=BE.AttackTarget,limit=1] remove BE.AttackTarget

# ソウルオファリング開始
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.OfferingEnd
