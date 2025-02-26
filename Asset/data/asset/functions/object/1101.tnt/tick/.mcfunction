#> asset:object/1101.tnt/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1101/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 敵にtpし続ける
    execute on vehicle run tp @s @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2,sort=nearest,limit=1]
execute on vehicle run say a
# vehicleがいなくなったら = TNTが爆破したらダメージを与えて消滅
    execute unless predicate lib:is_vehicle at @s run function asset:object/1101.tnt/tick/damage
