#> asset:artifact/1681.pre_cise/aim/update
#
# 狙う敵を選び、そのMobUUIDを自身の1AP.AimMobUUIDに保存する 敵がいなければ-1 (NoLockOn) を保存する
# 一度選んだ敵 (ロックオン) は、的がある間、倒される・実行位置から見えなくなる・20m圏外になるまで狙い続ける
# 自分の的が無い tick (スニーク開始など) は、1AP.AimMobUUIDに古い値が残っていても無視して選び直す
# ロックがない間は毎tick、視線の先の敵を優先して選び、いなければ実行位置から見える最寄りの敵を選ぶ
#
# MobUUIDは1〜32767を循環して再利用されるが、ロックの確認は実行位置から20m以内の敵に限り毎tick行うので、
# 別の敵が同じMobUUIDを引き継いで狙われ続けることは実用上起こらない
#
# @input
#   as player at 頭上のbig_preciseの位置
#   score $TargetExists Temporary : 自分の的が存在すれば1
# @output score $Changed Temporary : 狙う敵がいる状態といない状態が切り替わったら1 (呼出側が消す)
# @within function asset:artifact/1681.pre_cise/keep/targets

# 前回の値を得る (自分の的が無い、または未設定は-2)
    scoreboard players set $Prev Temporary -2
    execute if score $TargetExists Temporary matches 1 if score @s 1AP.AimMobUUID matches -2147483648..2147483647 run scoreboard players operation $Prev Temporary = @s 1AP.AimMobUUID

# ロックしている敵を実行位置から見えるか確認し、見えなければ-1にする (確認の射線は1本)
    scoreboard players operation $MobUUID Temporary = $Prev Temporary
    scoreboard players set $Visible Temporary 0
    scoreboard players set @s 1AP.AimMobUUID -1
    execute if score $MobUUID Temporary matches 0.. run function asset:artifact/1681.pre_cise/sight/verify
    execute if score $MobUUID Temporary matches 0.. if score $Visible Temporary matches 1 run scoreboard players operation @s 1AP.AimMobUUID = $MobUUID Temporary
    scoreboard players reset $MobUUID Temporary
    scoreboard players reset $Visible Temporary

# ロックがなければ、20m以内に敵がいる場合に限り、視線の先の敵を優先して選び、いなければ見える最寄りの敵を選ぶ
    execute unless score @s 1AP.AimMobUUID matches 0.. if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Death,distance=..20,limit=1] run function asset:artifact/1681.pre_cise/aim/gaze
    execute unless score @s 1AP.AimMobUUID matches 0.. run function asset:artifact/1681.pre_cise/aim/select

# 狙う敵がいる状態といない状態が切り替わったか調べる 敵の切替 (有効値から別の有効値) は含まない
    scoreboard players set $Changed Temporary 0
    execute if score $Prev Temporary matches -1 if score @s 1AP.AimMobUUID matches 0.. run scoreboard players set $Changed Temporary 1
    execute if score $Prev Temporary matches 0.. if score @s 1AP.AimMobUUID matches -1 run scoreboard players set $Changed Temporary 1

# リセット
    scoreboard players reset $Prev Temporary
