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

# 失った体力10につき、火攻撃+5%(最大100%)
# 補正はEffectAsset側で実装する

# 最大体力と現在体力を取得する
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health

# 失った体力を計算する
    execute store result score $LostHealth Temporary run scoreboard players operation $MaxHealth Temporary -= $Health Temporary

# 失った体力を10で割る
    scoreboard players operation $LostHealth Temporary /= $10 Const

# $LostHealthの数値をStackとして燃える蝶の夢エフェクトを付与
    data modify storage api: Argument.ID set value 220
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $LostHealth Temporary
    function api:entity/mob/effect/give

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $Health Temporary
    scoreboard players reset $LostHealth Temporary