#> asset:artifact/1056.one_drop_of_life/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1056.one_drop_of_life/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1056
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $MaxHealth
    #declare score_holder $CurrentHealth

# 最大体力と現在体力の100倍を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 100

# 現在体力の割合を求める
    scoreboard players operation $CurrentHealth Temporary /= $MaxHealth Temporary

# 数値が25以下ではないならCanUsedを削除
    execute unless score $CurrentHealth Temporary matches ..25 run tag @s remove CanUsed

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1056.one_drop_of_life/trigger/3.main