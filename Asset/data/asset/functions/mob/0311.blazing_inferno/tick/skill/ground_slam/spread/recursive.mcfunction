#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/spread/recursive
#
# アタックカウントに応じて回数が変わる
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/skill/ground_slam/spread/
#   asset:mob/0311.blazing_inferno/tick/skill/ground_slam/spread/recursive

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
        data modify storage lib: Argument.Bounds set value [[10d,10d],[0.0d,0.0d],[10d,10d]]
        execute as @e[type=marker,tag=SpreadMarker] run function lib:spread_entity/
    # 召喚
        execute at @e[type=marker,tag=SpreadMarker] run function api:object/summon

    # 片付け
        kill @e[type=marker,tag=SpreadMarker,limit=1]

# スコアを減らす
    scoreboard players remove @s 8N.AttackAmount 1

# スコアが残ってれば再帰
    execute if score @s 8N.AttackAmount matches 1.. run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/spread/recursive
