#> asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/summon_line
#
# テルツェット・ラグナレク
#
# @within
#    function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2181
    data modify storage api: Argument.FieldOverride.OverrideCmd set value 20498
    function api:object/summon
