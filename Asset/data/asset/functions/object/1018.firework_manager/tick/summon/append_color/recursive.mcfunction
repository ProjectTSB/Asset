#> asset:object/1018.firework_manager/tick/summon/append_color/recursive
#
#
#
# @within function
#   asset:object/1018.firework_manager/tick/summon/append_color/
#   asset:object/1018.firework_manager/tick/summon/append_color/recursive

# 再帰の回数を計測する
    scoreboard players add $RecursiveCount Temporary 1

# Picksで要素を1個取り出す
    data modify storage lib: Picks set value [0]
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
    execute store result score $Random Temporary run random value 0..65535
    execute store result storage lib: Picks[0] int 1 run scoreboard players operation $Random Temporary %= $CandidatesLength Temporary
    function lib:array/picks

# lib: ArrayにはPickされた要素以外の配列がそのまま入っているため、再帰は問題ない

# 配列に色を追加
    data modify storage asset:temp Firework.Colors append from storage lib: Elements[0]

# $RecursiveCount = $ColorCountになるまで再帰
    execute if score $RecursiveCount Temporary < $ColorCount Temporary run function asset:object/1018.firework_manager/tick/summon/append_color/recursive
