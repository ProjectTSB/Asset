#> asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/end
#
# 終了処理
#
# @within function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/

# リセット
    scoreboard players reset @s AV.UUID

# 待機モーション移行
    function asset:mob/0391.axia_first/ai/general/7.idle_motion_change
