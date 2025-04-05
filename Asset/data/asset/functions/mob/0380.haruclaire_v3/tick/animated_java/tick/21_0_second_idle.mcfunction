#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/21_0_second_idle
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 待機終了時、行動処理を呼び出す
    execute if score @s aj.21_0_second_idle.frame matches 49 as @e[type=wither_skeleton,tag=AK.EntityRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/act/
