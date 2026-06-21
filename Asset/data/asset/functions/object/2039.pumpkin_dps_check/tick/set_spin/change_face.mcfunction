#> asset:object/2039.pumpkin_dps_check/tick/set_spin/change_face
#
#
#
# @within function asset:object/2039.pumpkin_dps_check/tick/set_spin/beginning.m

#> Private
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Random

# lib:array/picksを用いて、ランダムなIDを取得する

# セッション開ける
    function lib:array/session/open
# 定義
    data modify storage lib: Array set value [20016,20201,20202,20203,20204,20205,20206,20282,20284]
    data modify storage lib: Picks set value [0]
# 候補リストの長さを取得
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
# 乱数
    execute store result score $Random Temporary run random value 0..65535
    execute store result storage lib: Picks[0] int 1 run scoreboard players operation $Random Temporary %= $CandidatesLength Temporary
# 抜き取り
    function lib:array/picks
# 顔を置き換え
    data modify entity @s item.tag.CustomModelData set from storage lib: Elements[0]

# リセット
    function lib:array/session/close
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength Temporary
