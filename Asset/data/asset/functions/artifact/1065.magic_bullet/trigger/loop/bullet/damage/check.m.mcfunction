#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/check.m
#
# 既にヒット済みかをマクロを使って検知する
#
#   args:
#     ID: int
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/check_target

# 自身のIDが既にあれば自身のターゲット用Tagを削除
    $execute if data storage asset:temp TL.HitList.$(ID) run tag @s remove TL.TargetEntity

# データがなければ追加しておく
    $execute unless data storage asset:temp TL.HitList.$(ID) run data modify storage asset:temp TL.HitList.$(ID) set value 0b
