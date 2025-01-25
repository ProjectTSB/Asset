#> asset:mob/0412.tiamat/tick/animated_java/tick/
#
# アニメーション用のイベントへの振り分け 主に演出用
#
# @within asset:mob/0412.tiamat/tick/

# 登場
    execute if entity @s[tag=aj.tiamat_aj.animation.0_start.playing] run function asset:mob/0412.tiamat/tick/animated_java/tick/0_start

# 待機
    execute if entity @s[tag=aj.tiamat_aj.animation.1_idle.playing] run function asset:mob/0412.tiamat/tick/animated_java/tick/1_idle

# 移動
    execute if entity @s[tag=aj.tiamat_aj.animation.6_0_flymove_start.playing] run function asset:mob/0412.tiamat/tick/animated_java/tick/6_0_flymove_start
    execute if entity @s[tag=aj.tiamat_aj.animation.6_1_flymove_end.playing] run function asset:mob/0412.tiamat/tick/animated_java/tick/6_1_flymove_end
