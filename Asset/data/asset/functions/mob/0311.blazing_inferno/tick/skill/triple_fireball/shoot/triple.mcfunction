#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/triple
#
# 三発同時発射、一つは自機狙い
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick

#> SpreadLib
# @private
    #declare tag SpreadMarker

# サウンド
    function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/vfx

# 自機狙い
    # ID指定
        data modify storage api: Argument.ID set value 2135
    # データ設定
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    # 召喚
        function api:object/summon

# 拡散弾
    # ID指定
        data modify storage api: Argument.ID set value 2135
    # データ設定
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    # 拡散
        data modify storage lib: Argument.Distance set value 10
        data modify storage lib: Argument.Spread set value 4
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
        execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # 召喚
        execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run function api:object/summon
    # 片付け
        kill @e[type=marker,tag=SpreadMarker,limit=1]

# 拡散弾
    # ID指定
        data modify storage api: Argument.ID set value 2135
    # データ設定
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    # 拡散
        data modify storage lib: Argument.Distance set value 10
        data modify storage lib: Argument.Spread set value 4
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
        execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # 召喚
        execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run function api:object/summon
    # 片付け
        kill @e[type=marker,tag=SpreadMarker,limit=1]
