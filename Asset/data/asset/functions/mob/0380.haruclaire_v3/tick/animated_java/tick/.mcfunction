#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/
#
# アニメーション用のイベントへの振り分け 主に演出用
#
# @within asset:mob/0380.haruclaire_v3/tick/

# モデルを自身の位置に移動
    execute run tp @s ~ ~ ~ ~ ~

# 登場
    execute if entity @s[tag=aj.haruclaire_aj.animation.0_0_start.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/0_0_start

# 待機
    execute if entity @s[tag=aj.haruclaire_aj.animation.1_0_rod_idle.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/1_0_rod_idle
# 待機
    execute if entity @s[tag=aj.haruclaire_aj.animation.21_0_second_idle.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/21_0_second_idle

# アイスウォール系
    execute if entity @s[tag=aj.haruclaire_aj.animation.4_0_rod_icewall.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/4_0_rod_icewall

# 移動
    execute if entity @s[tag=aj.haruclaire_aj.animation.3_0_rod_move.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/3_0_rod_move
# ぶんぶんぶん殴り
    execute if entity @s[tag=aj.haruclaire_aj.animation.8_0_rod_punch.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/8_0_rod_punch

# アイスバレット・エトワール
    execute if entity @s[tag=aj.haruclaire_aj.animation.5_0_rod_icebullet.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/5_0_rod_icebullet

# アイスバレット・ソレイユ
    execute if entity @s[tag=aj.haruclaire_aj.animation.6_1_rod_super_icebullet.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/6_1_rod_super_icebullet

# アイスレーザー
    execute if entity @s[tag=aj.haruclaire_aj.animation.9_0_rod_laser.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/9_0_rod_laser

# アイスピラー
    execute if entity @s[tag=aj.haruclaire_aj.animation.6_0_rod_icefang.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/6_0_rod_icefang
