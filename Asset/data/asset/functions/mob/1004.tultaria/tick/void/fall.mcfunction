#> asset:mob/1004.tultaria/tick/void/fall
#
#
#
# @within function asset:mob/1004.tultaria/tick/void/

# 上に飛ばされる
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:20b,duration:3,show_particles:0b,show_icon:0b}]}

# 演出
    particle dust 0.718 0.188 0.188 1 ~ ~1 ~ 0.3 0.5 0.3 0 5

# 自分のEffectを取得
    function api:data_get/active_effects

# 浮遊状態でなければダメージ
    execute unless data storage api: {active_effects:[{id:"minecraft:levitation"}]} run function asset:mob/1004.tultaria/tick/void/damage
