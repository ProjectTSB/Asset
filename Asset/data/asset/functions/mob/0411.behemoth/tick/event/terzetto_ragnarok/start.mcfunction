#> asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/start
#
# テルツェット・ラグナレク ヘイローンから呼び出す
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok_start/end

# タグ消去
    function asset:mob/0411.behemoth/tick/util/remove_animation_tag

# イベント実行
    scoreboard players set @s BF.EventTimer 0
    tag @s add BF.Skill.Ter.Rag
