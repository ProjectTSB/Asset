#> asset:object/2153.haruclaire_thrown_rod/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2153/init

# ランダムでタグを付与
    execute if predicate lib:random_pass_per/50 run tag @s add 2153.Inverse

# スコア初期化
    scoreboard players set @s 2153.CoolTime 0
