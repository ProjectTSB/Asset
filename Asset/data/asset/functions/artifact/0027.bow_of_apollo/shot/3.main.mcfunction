#> asset:artifact/0027.bow_of_apollo/shot/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0027.bow_of_apollo/shot/2.check_condition

# 現在MPを取得
    function api:mp/get_current
# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
# MPを元に戻す
    data modify storage api: Argument.MP set from storage api: Return.CurrentMP
    function api:mp/set

# 定数の設定
    # function asset:artifact/0027.bow_of_apollo/define_const
# 発射
    # チャージ段階を取得
        function asset:artifact/0027.bow_of_apollo/get_charge/

# リセット
    data remove storage asset:temp R
