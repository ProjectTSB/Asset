#> asset:object/1207.big_precise/tick/aim
#
# 20m以内で壁に遮られず見える最寄りの敵、いなければ20m以内の最寄りの敵、それもいなければ所有者と同じ向きを向く
#
# @input as big_precise at big_precise
# @within function asset:object/1207.big_precise/tick/

# 20m以内の敵のうち最寄り16体までを候補にし (見通し判定の負荷を抑える上限。limitの値で変更する)、最寄りの敵を記録する
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=16] add PreCise.Candidate
    tag @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20,sort=nearest,limit=1] add PreCise.Nearest

# 見える敵を探す (見つけた敵にPreCise.Seenが残る)
    execute if entity @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20,limit=1] run function asset:object/1207.big_precise/tick/search

# 向きを決める
    execute if entity @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20,limit=1] facing entity @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute unless entity @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20,limit=1] if entity @e[type=#lib:living_without_player,tag=PreCise.Nearest,distance=..20,limit=1] facing entity @e[type=#lib:living_without_player,tag=PreCise.Nearest,distance=..20,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute unless entity @e[type=#lib:living_without_player,tag=PreCise.Nearest,distance=..20,limit=1] rotated as @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~ ~ ~ ~

# リセット
    tag @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..21] remove PreCise.Candidate
    tag @e[type=#lib:living_without_player,tag=PreCise.Nearest,distance=..21] remove PreCise.Nearest
    tag @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..21] remove PreCise.Seen
