#> asset:object/1101.tnt/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1101/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 敵にtpし続ける
    tp @s @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2,sort=nearest,limit=1]

# passengerがいなくなったら = TNTが爆破したらダメージを与えて消滅
    execute unless predicate lib:is_passenger at @s run function asset:object/1101.tnt/tick/damage
