#> asset:object/2049.lightning_magic/tick/in_air
#
# 空中での処理
#
# @within function asset:object/2049.lightning_magic/tick/

# 空中に存在可能なTickのデクリメント
    execute store result storage asset:context this.InAirLimitTick int 0.9999999999 run data get storage asset:context this.InAirLimitTick

# 演出
    particle dust 1 1 0 1.3 ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a
    particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0 2 normal @a
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.1 2 0
