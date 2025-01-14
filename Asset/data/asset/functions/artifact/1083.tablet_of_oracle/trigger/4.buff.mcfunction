#> asset:artifact/1083.tablet_of_oracle/trigger/4.buff
#
# ランダムなバフを付与
#
# @within function asset:artifact/1083.tablet_of_oracle/trigger/3.main

#> Private
# @private
    #declare score_holder $Random

# 4種のうちランダムなバフ2つを付与する

# ID候補リスト
    data modify storage asset:temp Random set value [248,249,250,251]

# 0~3の乱数を取得する
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const

# (乱数)番目のIDのEffectのIDを代入する
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.ID set from storage asset:temp Random[0]
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.ID set from storage asset:temp Random[1]
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.ID set from storage asset:temp Random[2]
    execute if score $Random Temporary matches 3 run data modify storage api: Argument.ID set from storage asset:temp Random[3]

# (乱数)番目のIDを配列から削除
    execute if score $Random Temporary matches 0 run data remove storage asset:temp Random[0]
    execute if score $Random Temporary matches 1 run data remove storage asset:temp Random[1]
    execute if score $Random Temporary matches 2 run data remove storage asset:temp Random[2]
    execute if score $Random Temporary matches 3 run data remove storage asset:temp Random[3]

# 付与する
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 0~2の乱数を取得する
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# (乱数)番目のIDのEffectのIDを代入する
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.ID set from storage asset:temp Random[0]
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.ID set from storage asset:temp Random[1]
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.ID set from storage asset:temp Random[2]

# 付与する
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    data remove storage asset:temp Random
