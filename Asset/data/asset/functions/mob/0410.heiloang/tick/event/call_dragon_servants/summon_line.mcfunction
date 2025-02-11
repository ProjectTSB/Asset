#> asset:mob/0410.heiloang/tick/event/call_dragon_servants/summon_line
#
# コール：ドラゴンサーヴァント
#
# @within asset:mob/0410.heiloang/tick/event/call_dragon_servants/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2181
    data modify storage api: Argument.FieldOverride.OverrideCmd set value 20498
    execute positioned ^12 ^-0.5 ^12.5 run function api:object/summon
    data modify storage api: Argument.ID set value 2181
    data modify storage api: Argument.FieldOverride.OverrideCmd set value 20497
    execute positioned ^-12 ^-0.5 ^12.5 run function api:object/summon

# タグ付与
    tag @e[type=item_display,tag=2181.Line,sort=nearest,limit=2] add BE.Object
