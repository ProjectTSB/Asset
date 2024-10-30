#> asset:object/1057.giant_pumpkin/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1057/init

# UserIDを取得
    execute store result score @s 1057.OwnerID run data get storage asset:context this.UserID

# 継承
    function asset:object/super.init
