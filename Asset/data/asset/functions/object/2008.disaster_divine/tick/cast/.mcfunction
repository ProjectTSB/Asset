#> asset:object/2008.disaster_divine/tick/cast/
#
# 発動処理
#
# @within function asset:object/2008.disaster_divine/tick/

# サウンド再生
    playsound tsb_sounds:blaster1 hostile @a[distance=..32] ~ ~ ~ 2 0.75
    playsound tsb_sounds:blaster2 hostile @a[distance=..32] ~ ~ ~ 2 0.75
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 1.25
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 1.3

# ループ処理
    function asset:object/2008.disaster_divine/tick/cast/loop

# ダメージ処理
    execute as @a[tag=2008.Landing,distance=..55] run function asset:object/2008.disaster_divine/tick/cast/damage

# キル
    kill @s
