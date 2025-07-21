#> asset:artifact/1057.great_demon_head/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1057.great_demon_head/tick/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head
# 音消し
    stopsound @s player item.armor.equip_leather

# 回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.015 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    data modify storage api: Argument.FixedHeal set value false
    data modify storage api: Argument.ApplyTrigger set value false
    function api:heal/
    function api:heal/reset
