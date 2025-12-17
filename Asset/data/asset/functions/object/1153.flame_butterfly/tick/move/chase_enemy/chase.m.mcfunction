#> asset:object/1153.flame_butterfly/tick/move/chase_enemy/chase.m
#
# @input args:
#   TargetMobUUID : int
#   ChaseSpeed : float
# @within function asset:object/1153.flame_butterfly/tick/move/chase_enemy/m

# 対象の方へ向きだけ追尾する
    $execute facing entity @e[type=#lib:living_without_player,scores={MobUUID=$(TargetMobUUID)},distance=..20,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-120 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 前方がブロックに埋まっているか？
    $execute at @s if block ^ ^ ^$(ChaseSpeed) #lib:no_collision/ run data modify storage asset:temp 1153.Success set value true

# 前方が埋まっていなければ、そのまま進む
    $execute if data storage asset:temp 1153{Success:true} at @s run tp @s ^ ^ ^$(ChaseSpeed)

# 前方が埋まっていれば、ブロック衝突を考慮して進む
# Speedの半分を引数とする
    $execute unless data storage asset:temp 1153{Success:true} run data modify storage asset:temp 1153.Speed set value $(ChaseSpeed)
    execute unless data storage asset:temp 1153{Success:true} store result storage asset:temp 1153.Speed float 0.005 run data get storage asset:temp 1061.Speed 100
    $execute unless data storage asset:temp 1153{Success:true} at @s run function asset:object/1153.flame_butterfly/tick/move/with_collision.m {Speed:$(ChaseSpeed)}

# リセット
    data remove storage asset:temp 1153
