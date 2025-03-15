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

# 体力割合の1000倍を取得
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 1000
# 66.6%以下でないならCanUsedを削除
    execute unless score $HealthPer Temporary matches ..666 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1082.cursed_straw_doll/trigger/3.main

# リセット
    scoreboard players reset $HealthPer Temporary
