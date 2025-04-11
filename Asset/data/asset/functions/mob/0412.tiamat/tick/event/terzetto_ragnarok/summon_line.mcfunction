#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_line
#
# テルツェット・ラグナレク
#
# @within
#    function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2181
    data modify storage api: Argument.FieldOverride.OverrideCmd set value 20497
    function api:object/summon

# タグ付与
    tag @e[type=item_display,tag=2181.Line,sort=nearest,limit=1] add BG.Object
