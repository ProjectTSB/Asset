#> asset:object/1153.flame_butterfly/tick/move/search_target/
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/

# 状況によっては毎tick大量の再帰をしてしまうため、数tickに1回のみ判定する
    execute store result storage asset:context this.SearchInterval._ int 0.9999999999 run data get storage asset:context this.SearchInterval._
    execute unless data storage asset:context this.SearchInterval{_:0} run return fail
    data modify storage asset:context this.SearchInterval._ set from storage asset:context this.SearchInterval.Max

# 壁を貫通してない近くの敵を探す
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest] facing entity @s feet run function asset:object/1153.flame_butterfly/tick/move/search_target/recursive
