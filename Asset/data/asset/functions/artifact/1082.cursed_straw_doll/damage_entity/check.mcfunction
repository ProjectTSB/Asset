#> asset:artifact/1082.cursed_straw_doll/damage_entity/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1082/damage_entity/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 最大体力、現在体力の1000倍を取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 1
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 1000

# 現在体力割合を求める
    scoreboard players operation $CurrentHealth Temporary /= $MaxHealth Temporary

# 66.6%以下でないならCanUsedを削除
    execute if score $CurrentHealth Temporary matches 667.. run tag @s remove CanUsed

# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1082.cursed_straw_doll/damage_entity/

# リセット