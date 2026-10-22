#> asset:object/1207.big_precise/tick/search
#
# 最寄りの候補から順に、big_preciseから壁に遮られず見えるか調べる
#
# @input as big_precise at big_precise
# @within function
#   asset:object/1207.big_precise/tick/aim
#   asset:object/1207.big_precise/tick/search

# 最寄りの候補へ向けて見通しを調べる
    tag @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20,sort=nearest,limit=1] add PreCise.Seen
    scoreboard players set $Visible Temporary 0
    execute facing entity @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20,limit=1] eyes run function asset:object/1207.big_precise/tick/ray

# 見えなければ候補から外し、残りの候補を調べる
    execute if score $Visible Temporary matches 0 run tag @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20] remove PreCise.Candidate
    execute if score $Visible Temporary matches 0 run tag @e[type=#lib:living_without_player,tag=PreCise.Seen,distance=..20] remove PreCise.Seen
    execute if score $Visible Temporary matches 0 if entity @e[type=#lib:living_without_player,tag=PreCise.Candidate,distance=..20,limit=1] run function asset:object/1207.big_precise/tick/search

# リセット
    scoreboard players reset $Visible Temporary
