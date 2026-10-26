#> asset:object/1201.salmon_canon/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1201/tick

# 近くの敵を見る
    execute facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 攻撃
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] store result storage asset:context this.Interval._ int 0.9999999999 run data get storage asset:context this.Interval._
    execute if data storage asset:context this.Interval{_:0} at @s rotated ~ 0 positioned ^ ^0.2 ^0.8 run function asset:object/1201.salmon_canon/tick/attack

# 存在時間
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick
    execute if data storage asset:context this{Tick:0} run function asset:object/1201.salmon_canon/tick/kill
