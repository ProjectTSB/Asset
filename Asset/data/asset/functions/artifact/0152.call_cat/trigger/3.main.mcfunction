#> asset:artifact/0152.call_cat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0152.call_cat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# UUID取得
    function api:data_get/uuid

# ネコ召喚
    data modify storage api: Argument.ID set value 1003
    data modify storage api: Argument.FieldOverride.Heal set value 4f
    data modify storage api: Argument.FieldOverride.HealInterval.Max set value 60
    data modify storage api: Argument.FieldOverride.Tick set value 600
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.OwnerUUID set from storage api: UUID
    function api:object/summon
