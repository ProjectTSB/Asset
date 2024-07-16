#> asset:effect/0604.logging_of_soul/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0604.logging_of_soul/given/
#   asset:effect/0604.logging_of_soul/re-given/

#> Private
# @private
    #declare score_holder $Stack

# スタックに比例して最大体力を減少させる
# 10(2+Stack)%

# スタックを取得し、2を足し、storageへ代入
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage asset:context this.ModfierValue float -0.1 run scoreboard players add $Stack Temporary 2

# 代入する
    function asset:effect/0604.logging_of_soul/modifier/add.m with storage asset:context this

# リセット
    scoreboard players reset $Stack Temporary
