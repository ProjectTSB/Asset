#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/change_head
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/

#> Private
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Random

# 通常頭
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 頭のCMDをフィールドに入れておく
    data modify storage asset:context this.HeadCMD set value 20016

# ハード以下ならreturn
    execute if predicate api:global_vars/difficulty/max/normal run return 0

# ランダムな顔にする のっぺらぼう(ID:20283)だけは除外する
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
# データをフィールドへ移動
    data modify storage asset:context this.FaceList set from storage lib: Array
# 顔を置き換え
    data modify entity @s ArmorItems[3].tag.CustomModelData set from storage lib: Elements[0]

# 再度頭のCMDをフィールドに入れておく
    data modify storage asset:context this.HeadCMD set from storage lib: Elements[0]

# リセット
    function lib:array/session/close
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength Temporary

# FaceListに20283を追加
    data modify storage asset:context this.FaceList append value 20283
