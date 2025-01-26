#> asset:artifact/0250.phoenix/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0250.phoenix/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 矢を召喚する
    data modify storage api: Argument.ID set value 1072
    data modify storage api: Argument.FieldOverride.DamageForNightCloudy set value 300
    data modify storage api: Argument.FieldOverride.DamageForNightSunny set value 350
    data modify storage api: Argument.FieldOverride.DamageForDayCloudy set value 350
    data modify storage api: Argument.FieldOverride.DamageForDaySunny set value 400
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
