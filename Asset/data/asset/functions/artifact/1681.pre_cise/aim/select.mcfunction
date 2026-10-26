#> asset:artifact/1681.pre_cise/aim/select
#
# 実行位置から20m以内で、壁に遮られず見える最寄りの敵を探し、そのMobUUIDを自身の1AP.AimMobUUIDに保存する
# 見える敵がいなければ保存済みの値 (-1) を変えない
#
# @input
#   as player at 頭上のbig_preciseの位置
#   score @s 1AP.AimMobUUID : 狙う敵がいない状態 (-1)
# @within function asset:artifact/1681.pre_cise/aim/update

# 20m以内の敵のうち最寄り16体までを候補にする (見通し判定の負荷を抑える上限 limitの値で変更する)
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Death,scores={MobUUID=0..},distance=..20,sort=nearest,limit=16] add PreCise.Candidate

# 見える最寄りの敵を探して保存する
    execute if entity @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20,limit=1] run function asset:artifact/1681.pre_cise/aim/search

# リセット
    tag @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20] remove PreCise.Candidate
    tag @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20] remove PreCise.Seen
