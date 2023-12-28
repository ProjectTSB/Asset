#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/recursive
#
# 剣の落下の再帰処理
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/main
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/recursive

# 演出
    particle dust 1 1 100000000 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a
    execute if predicate lib:random_pass_per/15 run particle wax_off ~ ~0.5 ~ 0.05 0.05 0.05 0 1 normal @a

# スコア
    scoreboard players add $Count Temporary 1

# tp
    tp @s ~ ~-0.2 ~

# 地面に当たった場合ダメージ処理と強制終了
    execute unless block ~ ~ ~ #lib:no_collision run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/hit
    execute unless block ~ ~ ~ #lib:no_collision run return 0

# 6回まで再帰
    execute if score $Count Temporary matches ..6 at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/recursive