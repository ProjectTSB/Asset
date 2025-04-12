#> asset:mob/0175.queen_bee/tick/skill/common/select_target/when_no_target
#
# ターゲットがいない時にやること
#
# @input as player
# @within function asset:mob/0175.queen_bee/tick/skill/common/select_target/

# 実行者のUserIDを取得して、Targetタグを付与
    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @s UserID
    tag @s add 4V.Target
