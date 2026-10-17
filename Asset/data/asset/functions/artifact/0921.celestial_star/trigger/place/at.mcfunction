#> asset:artifact/0921.celestial_star/trigger/place/at
#
# 実行位置を星の座標として、星を表すEffectを付与する
#
# @within function asset:artifact/0921.celestial_star/trigger/place/

# 実行位置を星の座標としてEffectへ渡す
    execute summon marker run function asset:artifact/0921.celestial_star/trigger/place/get_pos

# 星を表すEffectを付与する
    data modify storage api: Argument.ID set value 402
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    particle dust 0.82 0.9 1 0.8 ~ ~ ~ 0.3 0.3 0.3 0 20
    particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 8
    playsound block.beacon.power_select player @a ~ ~ ~ 1.5 1.6
    playsound block.amethyst_block.resonate player @a ~ ~ ~ 2 1.2
