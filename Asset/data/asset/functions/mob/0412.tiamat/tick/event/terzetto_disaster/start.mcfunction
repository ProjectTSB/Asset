#> asset:mob/0412.tiamat/tick/event/terzetto_disaster/start
#
# テルツェット・ディザスター ヘイローンから呼び出す
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_disaster_start/end

# タグ消去
    function asset:mob/0412.tiamat/tick/util/remove_animation_tag

# イベント実行
    scoreboard players set @s BG.EventTimer 0
    tag @s add BG.Skill.Ter.Dis
