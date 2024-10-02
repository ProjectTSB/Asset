#> asset:object/1040.thelema_persuit_sword/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1040/init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

# 速度設定
    data modify storage asset:context this.Speed set value 6
    data modify storage asset:context this.Range set value 6

# フィールドから諸々設定
    execute store result score @s 1040.UserID run data get storage asset:context this.UserID
