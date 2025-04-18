#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/check_hit/
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle_formation/damage

# スコアをstorageへ入れる
    execute store result storage asset:temp Args.ID int 1 run scoreboard players get @s UserID

# マクロでヒット判定
    function asset:mob/0175.queen_bee/tick/skill/tackle_formation/check_hit/m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args
