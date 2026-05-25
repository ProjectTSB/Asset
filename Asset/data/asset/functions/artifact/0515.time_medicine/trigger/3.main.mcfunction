#> asset:artifact/0515.time_medicine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0515.time_medicine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 調整班向けメモ
# エンドでは日食バフ(隠し効果)が付与される
# 攻撃・耐性+ 与回復量・MP回復量-

# 昼・夜・エンドで異なるバフを付与
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run function asset:artifact/0515.time_medicine/trigger/effect.m {ID:357}
    execute if predicate lib:is_night unless predicate lib:dimension/is_end run function asset:artifact/0515.time_medicine/trigger/effect.m {ID:358}
    execute if predicate lib:dimension/is_end run function asset:artifact/0515.time_medicine/trigger/effect.m {ID:359}
