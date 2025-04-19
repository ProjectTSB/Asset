#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_0_icicle
#
# テルツェット・ラグナレク
#
# @within
#   function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Field
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=11.5..50] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
    playsound block.glass.break hostile @a ~ ~ ~ 2 0.7
    execute as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,distance=12.1..50] at @s run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/effect_icicle
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~10 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~20 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~30 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~40 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~50 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~60 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~70 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~80 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~90 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~100 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~110 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~120 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~130 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~140 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~150 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~160 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~170 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~180 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~190 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~200 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~210 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~220 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~230 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~240 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~250 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~260 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~270 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~280 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~290 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~300 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~310 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~320 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~330 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~340 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~350 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
