#> asset:artifact/1315.dolphin_dive/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1315.dolphin_dive/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.3 ~ rotated ~ 0 run function asset:artifact/1315.dolphin_dive/trigger/vfx
    playsound entity.dolphin.jump player @a ~ ~ ~ 0.8 1.1
    playsound entity.dolphin.jump player @a ~ ~ ~ 0.8 1.0
    playsound entity.dolphin.jump player @a ~ ~ ~ 0.8 0.9
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1
    execute if predicate lib:random_pass_per/50 run playsound minecraft:entity.dolphin.play player @a ~ ~ ~ 0.7 1

# Motion
    data modify storage lib: Argument.VectorMagnitude set value 1.1d
    execute rotated ~ -65 run function lib:motion/looking

# 自身が水面にいるならそれ用のフィールドを設定しておく
    execute if function asset:artifact/1315.dolphin_dive/trigger/predicate/water_surface run data modify storage api: Argument.FieldOverride.UseOnWaterSurface set value true

# 攻撃用エフェクト付与
    data modify storage api: Argument.ID set value 341
    data modify storage api: Argument.FieldOverride.Damage set value 1000
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 落下ダメージ無効
    data modify storage api: Argument.ID set value 190
    data modify storage api: Argument.Stack set value 10
    data modify storage api: Argument.Duration set value 40
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
