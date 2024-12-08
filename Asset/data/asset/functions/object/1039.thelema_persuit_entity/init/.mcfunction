#> asset:object/1039.thelema_persuit_entity/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1039/init

# フィールドから各データを取得
# UserID
    execute store result score @s 1039.UserID run data get storage asset:context this.UserID

# 剣の本数
    execute store result score @s 1039.SwordCount run data get storage asset:context this.SwordCount
