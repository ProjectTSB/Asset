#> asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/end
#
# テルツェット・ラグナレク
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/

# タグ消去
    tag @s remove BF.Skill.Ter.Rag

# 連続ダイブに移行
    scoreboard players set @s BF.EventTimer 0
    tag @s add BF.Skill.Blaze
