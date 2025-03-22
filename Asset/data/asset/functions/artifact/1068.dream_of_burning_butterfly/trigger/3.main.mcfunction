#> asset:artifact/1068.dream_of_burning_butterfly/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1068.dream_of_burning_butterfly/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle flame ~ ~1.3 ~ 0.4 0.6 0.4 0.15 25
    particle small_flame ~ ~1.3 ~ 0.4 0.6 0.4 0.3 25
    particle dripping_lava ~ ~1.7 ~ 0.4 0.6 0.4 0 25
    particle dust_color_transition 0.733 0.039 0.039 1 1 0.58 0.188 ~ ~1.3 ~ 0.4 0.6 0.4 0 30
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1.2
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1.4
    playsound block.fire.extinguish player @a ~ ~ ~ 0.3 1.4

# 失った体力X%につき、火攻撃+P%(最大A%)
# 補正はEffectAsset側で実装する

# $LostHealthPerは2.check_conditionで計算済み

# $LostHealthPerの0.1倍の数値をStackとして燃える蝶の夢エフェクトを付与
    data modify storage api: Argument.ID set value 220
    execute store result storage api: Argument.Stack int 0.1 run scoreboard players get $LostHealthPer Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセットはcheck_conditionで行っているので不要
