#> asset:object/1039.thelema_persuit_entity/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1039/init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

# フィールドから各データを取得

# 向き
    data modify entity @s Rotation set from storage asset:context this.Rotation

# UserID
    execute store result score @s 1039.UserID run data get storage asset:context this.UserID

# 最大体力
    execute store result score @s 1039.MaxHP5Per run data get storage asset:context this.MaxHP
