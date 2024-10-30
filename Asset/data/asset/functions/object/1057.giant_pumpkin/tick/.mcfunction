#> asset:object/1057.giant_pumpkin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1057/tick

# 継承
    function asset:object/super.tick

# Tag削除
    tag @e[type=#lib:living,tag=DXYZ] remove DXYZ
