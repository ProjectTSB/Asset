#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/summon_line
#
# テルツェット・プルガトリオ
#
# @within
#    function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/set_target
#    function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/summon_line

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2181
    function api:object/summon
# タグ付与
    tag @e[type=item_display,tag=2181.Line,sort=nearest,limit=1] add BF.Object

# ループ
    scoreboard players remove $Temp Temporary 1
    execute if score $Temp Temporary matches 1.. run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/summon_line
