#> asset:artifact/0822.sound_of_a_star/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/822/click/check

# MP消費前のMP割合を求める
    function api:mp/get_max
    execute store result score $MPMaxValue Temporary run data get storage api: Return.MaxMP
    function api:mp/get_current
    execute store result score $MPValue Temporary run data get storage api: Return.CurrentMP
    scoreboard players operation $MPValue Temporary *= $100 Const
    scoreboard players operation $MPValue Temporary /= $MPMaxValue Temporary
