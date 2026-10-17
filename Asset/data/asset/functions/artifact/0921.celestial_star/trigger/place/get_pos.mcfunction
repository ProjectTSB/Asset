#> asset:artifact/0921.celestial_star/trigger/place/get_pos
#
# markerの座標を星の座標として付与の引数に設定し、markerを消す
#
# @within function asset:artifact/0921.celestial_star/trigger/place/at

# markerの座標をEffectのFieldへ渡す
    data modify storage api: Argument.FieldOverride.Pos.X set from entity @s Pos[0]
    data modify storage api: Argument.FieldOverride.Pos.Y set from entity @s Pos[1]
    data modify storage api: Argument.FieldOverride.Pos.Z set from entity @s Pos[2]

# markerを消す
    kill @s
