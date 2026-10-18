#> asset:artifact/1632.photon_burst/trigger/attack/
#
#
#
# @within function asset:artifact/1632.photon_burst/trigger/recursive

# 演出
    particle flash ~ ~0.5 ~ 0 0 0 0 1 normal @a
    particle end_rod ~ ~0.5 ~ 0 0 0 0.3 20 normal @a
    particle dust 0.722 0.945 1 1 ~ ~0.5 ~ 1 1 1 0 30 normal @a
    execute rotated ~ 0 run function asset:artifact/1632.photon_burst/trigger/attack/vfx
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 0.7 1.2
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 0.7 1.4
    playsound entity.generic.explode player @a ~ ~ ~ 0.7 1.4
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 1 1.6

# ダメージ
    function api:damage/single_damage_session/open
    execute positioned ~-2.25 ~-2.25 ~-2.25 as @e[type=#lib:living_without_player,tag=Enemy,dx=3.5,dy=3.5,dz=3.5] run function asset:artifact/1632.photon_burst/trigger/attack/damage_range
    function api:damage/single_damage_session/close

# 現座標を見て使用者をmotionさせる
    execute facing ^ ^ ^-1 positioned as @s run function asset:artifact/1632.photon_burst/trigger/motion
