#> asset:effect/0407.inverse_proportionality/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0407.inverse_proportionality/_/re-given

# this.PrevStackに保存
    data modify storage asset:context this.PrevStack set from storage asset:context Stack

# バフ量更新
    function asset:effect/0407.inverse_proportionality/update/
