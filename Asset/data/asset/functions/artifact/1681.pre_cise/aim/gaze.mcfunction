#> asset:artifact/1681.pre_cise/aim/gaze
#
# 視線の先へ弾を撃ったら最初に当たる敵を調べ、その敵が実行位置から見えれば、MobUUIDを自身の1AP.AimMobUUIDに保存する
# 当たる敵がいない、または実行位置から見えなければ何も保存しない
#
# @input
#   as player at 頭上のbig_preciseの位置
# @within function asset:artifact/1681.pre_cise/aim/update

# 目の位置から視線方向へ進め、最初に当たる敵のMobUUIDを得る
    scoreboard players set $Steps Temporary -1
    scoreboard players set $Landing Temporary 0
    scoreboard players set $MobUUID Temporary -1
    execute at @s anchored eyes positioned ^ ^ ^ run function asset:artifact/1681.pre_cise/aim/gaze_step

# 当たった敵が実行位置から見えるなら保存する
    scoreboard players set $Visible Temporary 0
    execute if score $MobUUID Temporary matches 0.. run function asset:artifact/1681.pre_cise/sight/verify
    execute if score $MobUUID Temporary matches 0.. if score $Visible Temporary matches 1 run scoreboard players operation @s 1AP.AimMobUUID = $MobUUID Temporary

# リセット
    scoreboard players reset $Steps Temporary
    scoreboard players reset $Landing Temporary
    scoreboard players reset $MobUUID Temporary
    scoreboard players reset $Visible Temporary
