#> asset:artifact/0277.nudist_carnival/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/277/damage/


# 回復処理
    # 全回復
        data modify storage lib: Argument.Heal set value 10000f
    # 補正function
        function lib:heal/modifier
    # プレイヤーを回復
        function lib:heal/
    # リセット
        function lib:heal/reset