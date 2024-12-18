#> asset:object/2002.lighting_fast/tick/sound
#
# 音を鳴らす
#
# @within function asset:object/2002.lighting_fast/tick/vfx

# サウンド
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 1.5 0
    playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.25 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 1.95 0.0

    playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 2 0 0
    playsound entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 2 2 0
    playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 2 0 0
    playsound item.trident.riptide_1 hostile @a[distance=..32] ~ ~ ~ 2 2 0
