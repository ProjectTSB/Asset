#> asset:mob/0410.heiloang/tick/event/damage/end
#
# 怯み
#
# @within asset:mob/0410.heiloang/tick/event/damage/

# タグ消去
    tag @s remove BE.Skill.Damage
    tag @a remove BE.MainTarget

# 大技開始
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.FinalFlare
