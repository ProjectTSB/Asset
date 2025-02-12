#> asset:artifact/1166.airlift/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1166.airlift/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# 召喚方向設定
    execute rotated ~ 0 positioned ^1 ^ ^2 rotated ~-135 0 positioned ^ ^ ^-5 rotated ~ 15 as 0-0-0-0-0 run tp @s ^ ^ ^-5 ~ -10
    data modify storage api: Argument.FieldOverride.SummonRotation set from entity 0-0-0-0-0 Rotation

# 輸送機オブジェクトを召喚
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.ID set value 1076
    execute positioned as 0-0-0-0-0 run function api:object/summon

# reset
    tp 0-0-0-0-0 0.0 0.0 0.0
