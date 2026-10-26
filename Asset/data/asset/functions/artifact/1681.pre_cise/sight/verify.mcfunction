#> asset:artifact/1681.pre_cise/sight/verify
#
# MobUUIDが$MobUUIDの敵が、実行位置から20m以内にいて、壁に遮られず見えるか調べる
# Deathタグ付きの敵は見えないものとする 同じMobUUIDの敵が複数いれば、そのうち最初の1体の目へ向けて調べる
#
# @input
#   as player at 頭上のbig_preciseの位置
#   score $MobUUID Temporary : 調べる敵のMobUUID
# @output score $Visible Temporary : 見えれば1 (呼出側が消す)
# @within function
#   asset:artifact/1681.pre_cise/aim/gaze
#   asset:artifact/1681.pre_cise/aim/update

# MobUUIDが一致する敵にPreCise.Seenを付ける
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Death,distance=..20] if score @s MobUUID = $MobUUID Temporary run tag @s add PreCise.Seen

# その敵の目へ向けて見通しを調べる
    scoreboard players set $Visible Temporary 0
    execute facing entity @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20,limit=1] eyes run function asset:artifact/1681.pre_cise/sight/ray

# リセット
    tag @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20] remove PreCise.Seen
