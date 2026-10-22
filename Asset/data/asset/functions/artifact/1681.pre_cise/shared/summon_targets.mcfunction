#> asset:artifact/1681.pre_cise/shared/summon_targets
#
# 視点の周りの的3つを召喚する
#
# @input
#   as player
#   score $Chest Temporary? : 1ならチェスト、それ以外は通常の見た目 (未設定なら神器IDから決める)
# @within function
#   asset:artifact/1681.pre_cise/shared/summon_set
#   asset:artifact/1681.pre_cise/shared/reset_targets

# 的 (左右のずれを3等分した範囲から1つずつ選び、同じ位置に重ならないようにする)
    scoreboard players set $XSpan Temporary 667
    scoreboard players set $XMin Temporary -1000
    function asset:artifact/1681.pre_cise/shared/summon_target
    scoreboard players set $XSpan Temporary 666
    scoreboard players set $XMin Temporary -333
    function asset:artifact/1681.pre_cise/shared/summon_target
    scoreboard players set $XSpan Temporary 667
    scoreboard players set $XMin Temporary 333
    function asset:artifact/1681.pre_cise/shared/summon_target

# リセット
    scoreboard players reset $XMin Temporary
    scoreboard players reset $XSpan Temporary
    scoreboard players reset $Chest Temporary
