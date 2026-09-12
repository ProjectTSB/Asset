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

# Field の値を上書き
    #武器種の確定
        execute store result storage api: Argument.FieldOverride.Weapon int 1 run random value 0..5
    #向きをずらす
        execute store result storage api: Argument.FieldOverride.Yaw float 0.001 run random value -1000..1000
        execute store result storage api: Argument.FieldOverride.Pitch float 0.001 run random value -200..700
    # 正しいアイテムが表示されるように
        data modify storage api: Argument.FieldOverride.Id set value "minecraft:stick"
        execute if data storage api: Argument.FieldOverride{Weapon:4} run data modify storage api: Argument.FieldOverride.Id set value "minecraft:carrot_on_a_stick"
        execute if data storage api: Argument.FieldOverride{Weapon:5} run data modify storage api: Argument.FieldOverride.Id set value "minecraft:carrot_on_a_stick"
    # custommodelの変更
        execute if data storage api: Argument.FieldOverride{Weapon:0} run data modify storage api: Argument.FieldOverride.Model set value 1457
        execute if data storage api: Argument.FieldOverride{Weapon:1} run data modify storage api: Argument.FieldOverride.Model set value 1458
        execute if data storage api: Argument.FieldOverride{Weapon:2} run data modify storage api: Argument.FieldOverride.Model set value 1459
        execute if data storage api: Argument.FieldOverride{Weapon:3} run data modify storage api: Argument.FieldOverride.Model set value 1460
        execute if data storage api: Argument.FieldOverride{Weapon:4} run data modify storage api: Argument.FieldOverride.Model set value 1461
        execute if data storage api: Argument.FieldOverride{Weapon:5} run data modify storage api: Argument.FieldOverride.Model set value 1462
# 見た目変更(トンファーだけ刺さる向きを逆に)
        data modify storage api: Argument.FieldOverride.Rotation set value "[0f,0f,0f,1f]"
        execute if data storage api: Argument.FieldOverride{Weapon:3} run data modify storage api: Argument.FieldOverride.Rotation set value "[0f,0f,1f,0f]"


# 召喚位置・向きは実行者のものが使われる
    function api:object/summon
