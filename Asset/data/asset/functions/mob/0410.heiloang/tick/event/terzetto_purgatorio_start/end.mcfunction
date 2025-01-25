#> asset:mob/0410.heiloang/tick/event/terzetto_purgatorio_start/end
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_purgatorio_start/

# タグ消去
    tag @s remove BE.Skill.Ter.Purg.Start
    scoreboard players set @s BE.EventTimer 0

# 本番開始
    tag @s add BE.Skill.Ter.Purg
    execute as @e[type=slime,tag=BF.EntityRoot] at @s run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/start
    execute as @e[type=slime,tag=BG.EntityRoot] at @s run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio/start
