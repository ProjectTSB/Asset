#> asset:object/2009.magic_bullet/tick/cast/
#
# 発動処理
#
# @within function asset:object/2009.magic_bullet/tick/

# サウンド再生
    playsound tsb_sounds:blaster1 hostile @a[distance=..32] ~ ~ ~ 2 1
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 1.25
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 1.3
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 2
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 1.9

# ループ処理
    function asset:object/2009.magic_bullet/tick/cast/loop

# ダメージ処理
    execute as @a[tag=2009.Landing,distance=..55] run function asset:object/2009.magic_bullet/tick/cast/damage
