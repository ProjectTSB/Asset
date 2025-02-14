#> asset:mob/0224.fake_pumpkin/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/224/init

#> Private
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Random

# 初期値としてのっぺらぼう頭を被る
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20283}

# lib:arrayを用いて、ランダムなCMDの顔を被る

# セッション開ける
    function lib:array/session/open

# 定義
    data modify storage lib: Array set from storage asset:context this.FaceList
    data modify storage lib: Picks set value [0]
# 候補リストの長さを取得
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
# 乱数
    execute store result score $Random Temporary run random value 0..65535
    execute store result storage lib: Picks[0] int 1 run scoreboard players operation $Random Temporary %= $CandidatesLength Temporary
# 抜き取り
    function lib:array/picks
# 抜き取ったIDの頭を被る
    data modify entity @s ArmorItems[3].tag.CustomModelData set from storage lib: Elements[0]

# リセット
    function lib:array/session/close
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength

# 最寄りのプレイヤーを見る
    execute facing entity @p[gamemode=!spectator,distance=..64] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
