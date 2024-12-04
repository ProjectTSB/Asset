#> asset:artifact/0250.phoenix/attack_projectile/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/250/attack_projectile/


# ここから@sのTemporaryは強さ指数に変化(0..2)
# 昼だったらTemporaryが強さ指数が1になる
    execute if predicate lib:is_night run scoreboard players set @s Temporary 0
    execute if predicate lib:is_day run scoreboard players set @s Temporary 1
# 天気が晴なら指数1増加
    execute if predicate lib:weather/is_sunny run scoreboard players add @s Temporary 1

# だめーーじ
    data modify storage api: Argument.Damage set value 120.0f
    execute if score @s Temporary matches 1 run data modify storage api: Argument.Damage set value 160.0f
    execute if score @s Temporary matches 2 run data modify storage api: Argument.Damage set value 180.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DamageType set value "Projectile"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..100,limit=1] at @s run function asset:artifact/0250.phoenix/attack_projectile/4.damage
# リセット
    scoreboard players reset @s Temporary
    function api:damage/reset
