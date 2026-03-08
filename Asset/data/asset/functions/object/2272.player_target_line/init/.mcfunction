#> asset:object/2272.player_target_line/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2272/init

# 設定項目（FieldOverride）
    # TargetPlayerId : 対象のプレイヤーのUserID。
    # Tick : 表示時間。
    # (Optional) ObjectId : 紐づけ用のObjectId。これを利用したオブジェクトとの紐づけ方法は、Object2262を参照。
    # (Optional) IsChangePlayer : trueの場合、対象プレイヤーが一定以上離れた場合にロックオン対象を変更する。

# 対象プレイヤーの保持
    execute store result score @s 2272.PlayerId run data get storage asset:context this.TargetPlayerId

# 表示時間取得
    execute store result score @s 2272.Tick run data get storage asset:context this.Tick

# ObjectId
    execute store result score @s 2272.ObjectId run data get storage asset:context this.ObjectId
