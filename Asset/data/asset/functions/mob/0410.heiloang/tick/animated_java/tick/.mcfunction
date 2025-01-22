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
    execute if entity @s[tag=aj.heiloang_aj.animation.2_3_common_order.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/2_3_common_order

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

# 移動
    execute if entity @s[tag=aj.heiloang_aj.animation.12_0_flymove_start.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/12_0_flymove_start
    execute if entity @s[tag=aj.heiloang_aj.animation.12_1_flymove_end.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/12_1_flymove_end

# テンペストダイブ
    execute if entity @s[tag=aj.heiloang_aj.animation.7_1_dive_start.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/7_1_dive_start

# フレア
    execute if entity @s[tag=aj.heiloang_aj.animation.8_1_move_flare.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/8_1_move_flare

# 急降下
    execute if entity @s[tag=aj.heiloang_aj.animation.9_1_plamet.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/9_1_plamet
    execute if entity @s[tag=aj.heiloang_aj.animation.9_2_plamet_dive.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/9_2_plamet_dive

# パワーブレス
    execute if entity @s[tag=aj.heiloang_aj.animation.10_1_power_breath.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/10_1_power_breath
    execute if entity @s[tag=aj.heiloang_aj.animation.10_2_power_breath_continue_1.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/10_2_power_breath_continue_1
    execute if entity @s[tag=aj.heiloang_aj.animation.10_3_power_breath_continue_2.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/10_3_power_breath_continue_2
    execute if entity @s[tag=aj.heiloang_aj.animation.10_4_power_breath_continue_end.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/10_4_power_breath_continue_end

# ヘイルディザスター
    execute if entity @s[tag=aj.heiloang_aj.animation.99_disaster_cast.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/99_disaster_cast
    execute if entity @s[tag=aj.heiloang_aj.animation.99_disaster.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/99_disaster

# 召喚
    execute if entity @s[tag=aj.heiloang_aj.animation.13_summon.playing] run function asset:mob/0410.heiloang/tick/animated_java/tick/13_summon
