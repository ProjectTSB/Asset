#> asset:artifact/1682.pre_cise_empty/target/summon_reload_targets
#
# リロード状態の的3つを、視点の周りの左右を3等分した範囲へ左から順に1つずつ召喚する
#
# @input as player at player
# @within function asset:artifact/1682.pre_cise_empty/keep/objects

# 的 (左右のずれを3等分した範囲から1つずつ選び、同じ位置に重ならないようにする)
    scoreboard players set $XMin Temporary -1000
    scoreboard players set $XSpan Temporary 667
    function asset:artifact/1682.pre_cise_empty/target/summon_reload_target
    scoreboard players set $XMin Temporary -333
    scoreboard players set $XSpan Temporary 666
    function asset:artifact/1682.pre_cise_empty/target/summon_reload_target
    scoreboard players set $XMin Temporary 333
    scoreboard players set $XSpan Temporary 667
    function asset:artifact/1682.pre_cise_empty/target/summon_reload_target

# リセット
    scoreboard players reset $XMin Temporary
    scoreboard players reset $XSpan Temporary
