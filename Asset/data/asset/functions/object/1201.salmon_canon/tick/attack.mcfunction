#> asset:object/1201.salmon_canon/tick/attack
#
#
#
# @within function asset:object/1201.salmon_canon/tick/

# Interval初期化
    data modify storage asset:context this.Interval._ set from storage asset:context this.Interval.Max

# 演出
    playsound entity.player.splash.high_speed neutral @a ~ ~ ~ 0.2 1.6
    playsound entity.player.splash.high_speed neutral @a ~ ~ ~ 0.2 0.8
    particle minecraft:fishing ~ ~ ~ 0 0 0 0.1 20

# 攻撃用Object召喚
    data modify storage api: Argument.ID set value 1202
    execute store result storage api: Argument.FieldOverride.Damage double 1 run function asset:object/1201.salmon_canon/tick/get_damage.m with storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.Range set from storage asset:context this.Range
    data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed
    execute facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes run function api:object/summon
