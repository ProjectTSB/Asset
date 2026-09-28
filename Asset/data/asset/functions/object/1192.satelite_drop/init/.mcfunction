#> asset:object/1192.satelite_drop/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1192/init

# タイマー設定(召喚数×600Tick)
    execute store result score @s General.Object.Tick run data get storage asset:context this.Count 600

# Artifact側からアクセスする用のID紐づけ
    execute store result score @s 1192.UserID run data get storage asset:context this.UserID
