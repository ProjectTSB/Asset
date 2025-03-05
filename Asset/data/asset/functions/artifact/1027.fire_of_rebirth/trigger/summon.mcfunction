#> asset:artifact/1027.fire_of_rebirth/trigger/summon
#
# 魔法陣オブジェクトを召喚する
#
# @within function asset:artifact/1027.fire_of_rebirth/trigger/3.main

#> private
# @private
    #declare score_holder $Random

# データ設定
    # プレイヤーID
        execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    # プレイヤーの方向
        data modify storage api: Argument.FieldOverride.Yaw set from entity @s Rotation[0]
    # 魔法陣の召喚番号
        execute store result storage api: Argument.FieldOverride.MagicID int 1 run scoreboard players get $SJ.MagicID Temporary
    # チャージタイム (乱数アリ)
        execute store result storage api: Argument.FieldOverride.ChargeTime short 1 run random value 5..24
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set value 350f

# 召喚
    data modify storage api: Argument.ID set value 1063
    function api:object/summon
