#> asset:object/1071.arrow_of_wakinyan/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1071/pre_hit

# VFX
    particle dust 0 0 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    execute if predicate lib:weather/is_sunny run particle dust 1 1 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    execute if predicate lib:weather/is_raining run particle dust 1 0.6 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    execute if predicate lib:weather/is_thundering run particle dust 1 0 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
# SE
    playsound entity.lightning_bolt.thunder player @a[distance=..100] ~ ~ ~ 10 2
    playsound entity.lightning_bolt.thunder player @a[distance=..100] ~ ~ ~ 10 2

# ダメージ
    execute if predicate lib:weather/is_sunny run data modify storage asset:context this.Damage set from storage asset:context this.DamageForSunny
    execute if predicate lib:weather/is_raining run data modify storage asset:context this.Damage set from storage asset:context this.DamageForRaining
    execute if predicate lib:weather/is_thundering run data modify storage asset:context this.Damage set from storage asset:context this.DamageForThundering
