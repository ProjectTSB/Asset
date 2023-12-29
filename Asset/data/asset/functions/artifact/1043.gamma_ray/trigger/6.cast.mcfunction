#> asset:artifact/1043.gamma_ray/trigger/6.cast
#
# 発射
#
# @within function
#   asset:artifact/1043.gamma_ray/trigger/4.schedule
#   asset:artifact/1043.gamma_ray/trigger/5.casting

#> val
# @private
    #declare score_holder $SZ.Damage

# 着弾検知
    execute anchored eyes run function asset:artifact/1043.gamma_ray/trigger/6.1.loop

# ダメージ計算
# 溜め時間：N Tick 溜め時間が長いほど二次関数的にダメージが上がる
# N ^ 2 / 5 + 200
    scoreboard players operation $SZ.Damage Temporary = @s SZ.CastTick
    scoreboard players operation $SZ.Damage Temporary *= @s SZ.CastTick
    scoreboard players operation $SZ.Damage Temporary /= $5 Const
    execute store result storage lib: Argument.Damage float 1 run scoreboard players operation $SZ.Damage Temporary += $200 Const

# ダメージ
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[tag=SZ.Landing,distance=..28] run function lib:damage/
    
# 演出
    execute if score @s SZ.CastTick matches 0..20 anchored eyes run function asset:artifact/1043.gamma_ray/trigger/cast_vfx/1
    execute if score @s SZ.CastTick matches 21..40 anchored eyes run function asset:artifact/1043.gamma_ray/trigger/cast_vfx/2
    execute if score @s SZ.CastTick matches 41..60 anchored eyes run function asset:artifact/1043.gamma_ray/trigger/cast_vfx/3
    execute if score @s SZ.CastTick matches 61..80 anchored eyes run function asset:artifact/1043.gamma_ray/trigger/cast_vfx/4
    execute if score @s SZ.CastTick matches 81..100 anchored eyes run function asset:artifact/1043.gamma_ray/trigger/cast_vfx/5
    execute if score @s SZ.CastTick matches 101.. anchored eyes run function asset:artifact/1043.gamma_ray/trigger/cast_vfx/6

# 音
    playsound entity.lightning_bolt.thunder player @a[distance=..32] ~ ~ ~ 1 2
    playsound block.respawn_anchor.deplete player @a[distance=..32] ~ ~ ~ 1 2
    playsound block.amethyst_block.resonate player @a[distance=..32] ~ ~ ~ 1 2
    execute if score @s SZ.CastTick matches 41.. anchored eyes run playsound block.end_portal.spawn player @a[distance=..32] ~ ~ ~ 0.25 2
    execute if score @s SZ.CastTick matches 41.. anchored eyes run playsound item.trident.thunder player @a[distance=..32] ~ ~ ~ 1 2
    execute if score @s SZ.CastTick matches 81.. anchored eyes run playsound entity.warden.sonic_boom player @a[distance=..32] ~ ~ ~ 1 2
    execute if score @s SZ.CastTick matches 101.. anchored eyes run playsound entity.warden.sonic_boom player @a[distance=..32] ~ ~ ~ 1 1.99

# リセット
    function lib:damage/reset
    tag @s remove SZ.Cast
    tag @e[tag=SZ.Landing,distance=..28] remove SZ.Landing
    scoreboard players reset @s SZ.CastTick