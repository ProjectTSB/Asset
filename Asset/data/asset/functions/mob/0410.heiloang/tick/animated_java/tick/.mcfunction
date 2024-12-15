#> asset:mob/0410.heiloang/tick/animated_java/tick/
#
# アニメーション用のイベントへの振り分け 主に演出用
#
# @within asset:mob/0410.heiloang/tick/

# 待機
    execute if entity @s[tag=aj.heiloang_aj.animation.1_idle.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/1_idle

# 汎用詠唱
    execute if entity @s[tag=aj.heiloang_aj.animation.2_1_common_casting.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/2_1_common_casting
    execute if entity @s[tag=aj.heiloang_aj.animation.2_2_common_invoke.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/2_2_common_invoke

# ヘルファイア
    execute if entity @s[tag=aj.heiloang_aj.animation.3_0_hellfire_start.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/3_0_hellfire_start
    execute if entity @s[tag=aj.heiloang_aj.animation.3_2_hellfire_shoot_end.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/3_2_hellfire_shoot_end

# アダマントスパイク
    execute if entity @s[tag=aj.heiloang_aj.animation.4_blizzard.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/4_blizzard

# 移動攻撃
    execute if entity @s[tag=aj.heiloang_aj.animation.5_1_move_start.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/5_1_move_start
    execute if entity @s[tag=aj.heiloang_aj.animation.5_2_move.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/5_2_move

# なぎはらい火炎放射
    execute if entity @s[tag=aj.heiloang_aj.animation.6_sweep_breath.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/6_sweep_breath

# フレア
    execute if entity @s[tag=aj.heiloang_aj.animation.8_1_move_flare.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/8_1_move_flare

# 急降下
    execute if entity @s[tag=aj.heiloang_aj.animation.9_1_plamet.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/9_1_plamet
    execute if entity @s[tag=aj.heiloang_aj.animation.9_2_plamet_dive.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/9_2_plamet_dive
