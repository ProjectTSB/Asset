#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/
#
# アニメーション用のイベントへの振り分け 主に演出用
#
# @within asset:mob/0380.haruclaire_v3/tick/

# モデルを自身の位置に移動
    execute run tp @s ~ ~ ~ ~ ~

# 待機
    execute if entity @s[tag=aj.heiloang_aj.animation.1_0_rod_idle.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/1_0_rod_idle
