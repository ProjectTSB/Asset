#> asset:artifact/1068.dream_of_burning_butterfly/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1068/damage_entity/

# 演出
    particle flame ~ ~1.3 ~ 0.4 0.6 0.4 0.15 25
    particle small_flame ~ ~1.3 ~ 0.4 0.6 0.4 0.3 25
    particle dripping_lava ~ ~1.7 ~ 0.4 0.6 0.4 0 25
    particle dust_color_transition 0.733 0.039 0.039 1 1 0.58 0.188 ~ ~1.3 ~ 0.4 0.6 0.4 0 30
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1.2
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1.4
    playsound block.fire.extinguish player @a ~ ~ ~ 0.3 1.4

# 失った体力10につき、火攻撃+5%(最大25%)
# 補正はEffectAsset側で実装する

# $LostHealthはcheckで計算済み

# $LostHealthの0.1倍の数値をStackとして燃える蝶の夢エフェクトを付与
    data modify storage api: Argument.ID set value 220
    execute store result storage api: Argument.Stack int 0.01 run scoreboard players get $LostHealth Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセットはcheck_conditionで行っているので不要
