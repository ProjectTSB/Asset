#> asset:artifact/0515.time_medicine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0515.time_medicine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 調整班向けメモ
# エンドでは朝と夜の両方のバフが付与されることを忘れないように

# 朝と夜で異なるバフを付与
    execute if predicate lib:is_day run function asset:artifact/0515.time_medicine/trigger/effect.m {ID:357}
    execute if predicate lib:is_night run function asset:artifact/0515.time_medicine/trigger/effect.m {ID:358}
