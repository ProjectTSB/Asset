#> asset:artifact/1681.pre_cise/aim/search
#
# 最寄りの候補から順に、実行位置から壁に遮られず見えるか調べ、最初に見えた敵のMobUUIDを自身の1AP.AimMobUUIDに保存する
#
# @input
#   as player at 頭上のbig_preciseの位置
#   tag PreCise.Candidate : 候補の敵 (MobUUIDを持つ)
# @within function
#   asset:artifact/1681.pre_cise/aim/search
#   asset:artifact/1681.pre_cise/aim/select

# 最寄りの候補へ向けて見通しを調べる
    tag @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20,sort=nearest,limit=1] add PreCise.Seen
    scoreboard players set $Visible Temporary 0
    execute facing entity @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20,limit=1] eyes run function asset:artifact/1681.pre_cise/sight/ray

# 見えたらその敵のMobUUIDを保存する
    execute if score $Visible Temporary matches 1 run scoreboard players operation @s 1AP.AimMobUUID = @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20,limit=1] MobUUID

# 見えなければ候補から外し、残りの候補を調べる
    execute if score $Visible Temporary matches 0 run tag @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20] remove PreCise.Candidate
    execute if score $Visible Temporary matches 0 run tag @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20] remove PreCise.Seen
    execute if score $Visible Temporary matches 0 if entity @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20,limit=1] run function asset:artifact/1681.pre_cise/aim/search

# リセット
    scoreboard players reset $Visible Temporary
