#> asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/summon
#
# フィールド中心から拡散する
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 拡散
    # ID指定
        data modify storage api: Argument.ID set value 2147
    # データ設定
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    # 拡散
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
        data modify storage lib: Argument.Bounds set value [[16d,16d],[0.0d,0.0d],[16d,16d]]
    # スポーン地点のマーカーがちょっと浮いてる関係で調整している
        execute as @e[type=marker,tag=SpreadMarker,distance=..64] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,limit=1] run function lib:spread_entity/
    # 召喚
        execute at @e[type=marker,tag=SpreadMarker,distance=..64] run function api:object/summon
    # 片付け
        kill @e[type=marker,tag=SpreadMarker,distance=..64,limit=1]
