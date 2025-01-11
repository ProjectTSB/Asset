#> asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/
#
# 銃発射
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/
#   asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/

# 再起スコアの初期化
    scoreboard players set $AX.Loop Temporary 0

# ループ処理の開始
    execute positioned ^-0.4 ^1.75 ^1.5 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/loop

# サウンド再生
    playsound tsb_sounds:blaster1 hostile @a[distance=..32] ~ ~ ~ 1 1
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.25
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.3
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 2
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.9

# タグリセット
    tag @s remove AX.Landing

# 再起スコアリセット
    scoreboard players reset $AX.Loop Temporary
