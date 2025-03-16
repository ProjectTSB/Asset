#> asset:object/2085.mine_dispenser/tick/scatter
#
# 
#
# @within function asset:object/2085.mine_dispenser/tick/

#> marker
# @within
#   function asset:object/2085.mine_dispenser/tick/**
    #declare tag C4.SummonPoint

# marker用意
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}
    summon marker ~ ~ ~ {Tags:["C4.SummonPoint"]}

# 拡散中心へ移動
    data modify storage asset:temp Args.X set from storage asset:context this.Minefield_Pos[0]
    data modify storage asset:temp Args.Z set from storage asset:context this.Minefield_Pos[2]
    function asset:object/2085.mine_dispenser/tick/move_to_centre.m with storage asset:temp Args

# 拡散
    execute as @e[type=marker,tag=C4.SummonPoint] at @s run function asset:object/2085.mine_dispenser/tick/spread_marker

# 召喚
    execute at @e[type=marker,tag=C4.SummonPoint] run function asset:object/2085.mine_dispenser/tick/summon_mine

# 音
    playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..64] ~ ~ ~ 1 1 1

# reset
    kill @e[type=marker,tag=C4.SummonPoint]
