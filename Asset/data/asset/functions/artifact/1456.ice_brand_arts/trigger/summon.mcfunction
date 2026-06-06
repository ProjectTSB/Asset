#> asset:artifact/1456.ice_brand_arts/trigger/position_set
#
# 神器のメイン処理部
#
# @within function asset:artifact/1456.ice_brand_arts/trigger/position_set


# 演出
    particle minecraft:dust_color_transition 0.5 0.8 1.0 1.2 1.0 1.0 1.0 ~ ~0.5 ~ 0.4 0.4 0.4 0 30 normal
    particle minecraft:snowflake ~ ~0.5 ~ 1 1 1 0.02 10 normal
    particle minecraft:end_rod ~ ~0.5 ~ 0.2 0.2 0.2 0.03 20 normal

#武器設置
    # 引数: ID
    data modify storage api: Argument.ID set value 1161

    

# (オプション) Field の値を上書き
    #data modify storage api: Argument.FieldOverride set value {Speed:8,Damage:5.0d,Color:16711680}

# 召喚位置・向きは実行者のものが使われる
    function api:object/summon
    

    
