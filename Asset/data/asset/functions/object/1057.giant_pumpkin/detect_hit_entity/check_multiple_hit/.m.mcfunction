#> asset:object/1057.giant_pumpkin/detect_hit_entity/check_multiple_hit/.m
#
# マクロを使って多重ヒットを防止する
#
# @input args:
#   TempID : int
# @within function asset:object/1057.giant_pumpkin/detect_hit_entity/check_multiple_hit/

# 自身のIDが既にあれば自身のターゲット用Tagを削除
    $execute if data storage asset:context this.HitList.$(TempID) run tag @s remove DXYZ

# データがなければ追加しておく
    $execute unless data storage asset:context this.HitList.$(TempID) run data modify storage asset:context this.HitList.$(TempID) set value 0b
