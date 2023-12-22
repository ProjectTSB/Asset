#> asset:mob/0344.louvert_soul_blast/summon/init
#
# 初期化処理
#
# @within function asset:mob/0344.louvert_soul_blast/summon/2.summon

# スコア初期化
    scoreboard players set @s 9K.Tick 0

# 向きリセット
    tp @s ~ ~ ~ ~ 0

# リセット
    tag @s remove 9K.Init