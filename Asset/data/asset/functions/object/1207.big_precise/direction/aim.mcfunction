#> asset:object/1207.big_precise/direction/aim
#
# 所有者がスニーク中なら、所有者が保存した狙う敵の目を向く
# スニーク中でない、または狙う敵がいなければ所有者と同じ向きを向く
#
# @input
#   as big_precise at big_precise
#   tag PreCise.Owner : 所有者 (16m以内)
# @within function asset:object/1207.big_precise/tick/

# 所有者と同じ向きにする
    execute rotated as @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~ ~ ~ ~

# スニーク中に狙う敵がいれば、その目を向く
    execute if entity @p[tag=PreCise.Owner,distance=..16,predicate=lib:is_sneaking] run function asset:object/1207.big_precise/direction/mark_aim
    execute facing entity @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..24,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# リセット
    tag @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..24] remove PreCise.Aimed
