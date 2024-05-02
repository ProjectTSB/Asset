#> asset:artifact/1082.cursed_straw_doll/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1082.cursed_straw_doll/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1082
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 最大体力、現在体力の1000倍を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 1000

# 現在体力割合を求める
    scoreboard players operation $CurrentHealth Temporary /= $MaxHealth Temporary

# 66.6%以下でないならCanUsedを削除
    execute if score $CurrentHealth Temporary matches 667.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1082.cursed_straw_doll/trigger/3.main

# リセット
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $MaxHealth Temporary
