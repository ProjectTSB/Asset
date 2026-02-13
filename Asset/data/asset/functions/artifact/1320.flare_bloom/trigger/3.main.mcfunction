#> asset:artifact/1320.flare_bloom/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1320.flare_bloom/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound entity.blaze.shoot player @a ~ ~ ~ 1.5 1.3
    playsound entity.witch.throw player @a ~ ~ ~ 1.5 0.5

# ダメージ設定
    data modify storage api: Argument.FieldOverride.Damage.Default set value 500
    execute store result storage api: Argument.FieldOverride.Damage.LowHealthPer float 1.5 run data get storage api: Argument.FieldOverride.Damage.Default

# Object召喚
    data modify storage api: Argument.ID set value 1153
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~ 0 anchored eyes positioned ^-1.8 ^8 ^-5 run function api:object/summon
