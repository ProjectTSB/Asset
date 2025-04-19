#> asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/end
#
# テルツェット・ラグナレク
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/

# タグ消去
    tag @s remove BF.Skill.Ter.Rag

# ブレイジングエンドに移行
    scoreboard players set @s BF.EventTimer 0
    scoreboard players set @s BF.ActCount 0
    tag @s add BF.Skill.Blaze
    tag @s add BF.State.Wait
