#> asset:artifact/1456.ice_brand_arts/trigger/position_set
#
# 神器のメイン処理部
#
# @within function asset:artifact/1456.ice_brand_arts/trigger/position_set


# 演出
    particle minecraft:dust_color_transition 0.5 0.8 1.0 1.2 1.0 1.0 1.0 ~ ~0.5 ~ 0.4 0.4 0.4 0 30 normal
    particle minecraft:snowflake ~ ~0.5 ~ 1 1 1 0.02 10 normal
    particle minecraft:end_rod ~ ~0.5 ~ 0.2 0.2 0.2 0.03 20 normal

# 0〜5の乱数を生成し、ストレージに保存(武器種決定)
    # execute store result storage asset:temp kind int 1 run random value 0..0
#武器設置
    # 引数: ID
    data modify storage api: Argument.ID set value 1161
    # execute if data storage asset:temp {kind:1} run data modify storage api: Argument.ID set value 1162
    # execute if data storage asset:temp {kind:2} run data modify storage api: Argument.ID set value 1163
    # execute if data storage asset:temp {kind:3} run data modify storage api: Argument.ID set value 1164
    # execute if data storage asset:temp {kind:4} run data modify storage api: Argument.ID set value 1165
    # execute if data storage asset:temp {kind:5} run data modify storage api: Argument.ID set value 1166
    

# (オプション) Field の値を上書き
    #data modify storage api: Argument.FieldOverride set value {Speed:8,Damage:5.0d,Color:16711680}

# 召喚位置・向きは実行者のものが使われる
    function api:object/summon
    
    data remove storage asset:temp kind
    
