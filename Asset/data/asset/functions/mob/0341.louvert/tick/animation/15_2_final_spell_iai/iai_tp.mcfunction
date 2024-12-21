#> asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_tp
#
# 
#
# @within function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ 0
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..64,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ 0
# ランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/
    execute at 0-0-0-0-0 positioned ^ ^ ^8 facing ^ ^ ^-1 run tp 0-0-0-0-0 ^ ^ ^ ~ 0
# TPする
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/1.teleport
    function asset:mob/0341.louvert/tick/general/3.teleport_effect
# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0