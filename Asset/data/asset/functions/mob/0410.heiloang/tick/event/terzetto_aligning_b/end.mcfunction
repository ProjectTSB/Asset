#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/end
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/

# タグ消去
    tag @s remove BE.Skill.Ter.Alig.B
    scoreboard players set @s BE.EventTimer 0

# 交差攻撃開始
    tag @s add BE.Skill.Ter.Alig
