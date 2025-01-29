#> asset:artifact/0277.nudist_carnival/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/277/damage/

# 回復処理
    # 全回復
        data modify storage api: Argument.Heal set value 10000f
    # 補正function
        function api:heal/modifier
    # プレイヤーを回復
        function api:heal/
    # リセット
        function api:heal/reset
