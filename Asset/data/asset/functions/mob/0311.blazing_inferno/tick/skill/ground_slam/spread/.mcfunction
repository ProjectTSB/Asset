#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/spread/
#
# 拡散ボム
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/

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
        execute as @e[type=marker,tag=SpreadMarker] run function lib:spread_entity/
    # 召喚
        execute at @e[type=marker,tag=SpreadMarker] run function api:object/summon

    # 片付け
        kill @e[type=marker,tag=SpreadMarker,limit=1]
