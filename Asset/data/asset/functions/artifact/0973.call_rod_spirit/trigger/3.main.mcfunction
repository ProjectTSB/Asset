#> asset:artifact/0973.call_rod_spirit/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0973.call_rod_spirit/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    data modify storage api: Argument.ID set value 1029
    data modify storage api: Argument.FieldOverride.Damage set value {Min:95,Max:135}
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

# 音とパーティクル
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1
