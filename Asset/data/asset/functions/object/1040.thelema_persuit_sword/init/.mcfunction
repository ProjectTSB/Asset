#> asset:object/1040.thelema_persuit_sword/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1040/init

# スピード関連のデータ設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 200
    data modify storage asset:context this.MovePerStep set value -0.1

# フィールドから諸々設定
    execute store result score @s 1040.UserID run data get storage asset:context this.UserID

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
