#> asset:artifact/1054.quick_charging_battery/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1054.quick_charging_battery/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1054
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 現在MPが30%以下で発動する

    # 最大MPと現在MPを取得
        function api:mp/get_max
        function api:mp/get_current

    # スコアへ代入 現在MPは100倍で代入する
        execute store result score $MaxMP Temporary run data get storage api: Return.MaxMP
        execute store result score $CurrentMP Temporary run data get storage api: Return.CurrentMP 100

    # 割合を求める
        scoreboard players operation $CurrentMP Temporary /= $MaxMP Temporary

    # 値が31以上でCanUsedを削除
        execute if score $CurrentMP Temporary matches 31.. run tag @s remove CanUsed

# リセット
    scoreboard players reset $MaxMP Temporary
    scoreboard players reset $CurrentMP Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1054.quick_charging_battery/trigger/3.main