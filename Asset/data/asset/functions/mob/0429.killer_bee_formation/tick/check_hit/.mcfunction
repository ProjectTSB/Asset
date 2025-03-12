#> asset:mob/0429.killer_bee_formation/tick/check_hit/
#
#
#
# @within function asset:mob/0429.killer_bee_formation/tick/damage

# スコアをstorageへ入れる
    execute store result storage asset:temp Args.ID int 1 run scoreboard players get @s UserID

# マクロでヒット判定
    function asset:mob/0429.killer_bee_formation/tick/check_hit/m

# リセット
    data remove storage asset:temp Args
