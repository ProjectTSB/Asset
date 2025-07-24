#> asset:effect/0300.aigis_vitae/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0300.aigis_vitae/_/given

# バリアを付与
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set value [I;1,3,300,0]
    data modify storage api: Argument.WipedCallback set value "asset:effect/0300.aigis_vitae/remove"
    function api:entity/player/absorption/add
