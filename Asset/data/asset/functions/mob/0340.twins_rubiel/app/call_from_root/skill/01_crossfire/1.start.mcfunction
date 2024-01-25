#> asset:mob/0340.twins_rubiel/app/call_from_root/skill/01_crossfire/1.start
#
# root側から呼び出される処理
#
# @within
#    function 

# アニメーション再生停止
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation

# 弾数リセット
    scoreboard players set @s 9F.BulletCount.Hg 0
