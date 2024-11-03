#> asset:object/1057.giant_pumpkin/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1057/init

# UserIDを取得
    execute store result score @s 1057.OwnerID run data get storage asset:context this.UserID

# StartDelayの値を-1倍して入れる
# 未設定でも0が自動的に入るのでそのまま突っ込む
    execute store result score @s General.Object.Tick run data get storage asset:context this.StartDelay

# 継承
    function asset:object/super.init
