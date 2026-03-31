#> asset:object/1018.firework_manager/tick/summon/append_color/
#
#
#
# @within function
#   asset:object/1018.firework_manager/tick/summon/

# セッション開ける
    function lib:array/session/open

# 再帰で色を変える
    data modify storage lib: Array set from storage asset:context this.ColorList
    function asset:object/1018.firework_manager/tick/summon/append_color/recursive

# リセット
    function lib:array/session/close
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength Temporary
