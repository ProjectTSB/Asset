#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio/start
#
# テルツェット・ディザスター ヘイローンから呼び出す
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_purgatorio_start/end

# タグ消去
    function asset:mob/0412.tiamat/tick/util/remove_animation_tag

# イベント実行
    scoreboard players set @s BG.EventTimer 0
    execute if predicate lib:random_pass_per/50 run tag @s add BG.Skill.Ter.Purg.A
    execute if entity @s[tag=!BG.Skill.Ter.Purg.A] run tag @s add BG.Skill.Ter.Purg.B
