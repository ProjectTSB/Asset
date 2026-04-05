#> asset:object/1072.arrow_of_phoenix/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1072/pre_hit

#> Private
# @private
#declare tag 1009.Target

# VFX
    particle flame ~ ~0.3 ~ 0.4 0.4 0.4 0 150 force @a
    execute unless predicate lib:is_day unless predicate lib:weather/is_sunny run particle dust 1 0.533 0 1 ~ ~0.3 ~ 0.4 0.4 0.4 0 100 force @a
    execute if predicate lib:is_day unless predicate lib:weather/is_sunny run particle dust 1 0 0 1 ~ ~-.3 ~ 0.4 0.4 0.4 0 100 force @a
    execute unless predicate lib:is_day if predicate lib:weather/is_sunny run particle dust 1 0 0 1 ~ ~-.3 ~ 0.4 0.4 0.4 0 100 force @a
    execute if predicate lib:is_day if predicate lib:weather/is_sunny run particle dust 0.969 0 1 1 ~ ~0.3 ~ 0.4 0.4 0.4 0 100 force @a
# SE
    playsound item.firecharge.use player @a[distance=..100] ~ ~ ~ 10 1
    playsound item.firecharge.use player @a[distance=..100] ~ ~ ~ 10 1

# 燃やす
    data modify entity @e[type=#lib:living_without_player,tag=1009.Target,distance=..0.1,limit=1] Fire set value 200s
# ダメージ設定
    execute unless predicate lib:is_day unless predicate lib:weather/is_sunny run data modify storage asset:context this.Damage set from storage asset:context this.DamageForNightCloudy
    execute if predicate lib:is_day unless predicate lib:weather/is_sunny run data modify storage asset:context this.Damage set from storage asset:context this.DamageForNightSunny
    execute unless predicate lib:is_day if predicate lib:weather/is_sunny run data modify storage asset:context this.Damage set from storage asset:context this.DamageForDayCloudy
    execute if predicate lib:is_day if predicate lib:weather/is_sunny run data modify storage asset:context this.Damage set from storage asset:context this.DamageForDaySunny
