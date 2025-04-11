#> asset:mob/0175.queen_bee/tick/skill/grandslam/reset
#
#
#
# @within function
#    asset:mob/0175.queen_bee/tick/skill/grandslam/
#    asset:mob/0175.queen_bee/tick/skill/grandslam/block_hit

# モデル戻す
    execute on passengers run data modify entity @s item.tag.CustomModelData set value 20052
    execute rotated ~ 0 run function asset:mob/0175.queen_bee/tick/common/tp/

# リセット処理
    function asset:mob/0175.queen_bee/tick/skill/reset
