#> asset:artifact/1054.quick_charging_battery/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1054/tick/check

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