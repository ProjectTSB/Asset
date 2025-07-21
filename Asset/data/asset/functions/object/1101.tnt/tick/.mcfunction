#> asset:object/1101.tnt/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1101/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 近くにMobがいれば、Motionをリセットして自身にTagを付与
    execute on vehicle at @s run function asset:object/1101.tnt/tick/on_vehicle

# vehicleがいなくなったら = TNTが爆破したらダメージを与えて消滅
    execute unless predicate lib:is_vehicle at @s run function asset:object/1101.tnt/tick/damage/

# 破壊可能エリアでないなら強制的に消滅
    execute unless predicate api:area/is_breakable run function asset:object/1101.tnt/tick/kill
