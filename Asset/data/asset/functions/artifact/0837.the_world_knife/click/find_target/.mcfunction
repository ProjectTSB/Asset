#> asset:artifact/0837.the_world_knife/click/find_target/
#
#
#
# @within function asset:artifact/0837.the_world_knife/click/

# 視点先に敵が居るならそいつを対象とする
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0837.the_world_knife/click/find_target/by_ray
# 視点先に敵が居なかったら正面の一番近い敵を対象とする
    execute unless entity @e[type=#lib:living,tag=N9.TargetCandidate,distance=..5] anchored eyes positioned ^ ^ ^2.5 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2.5] add N9.TargetCandidate
    tag @e[type=#lib:living,tag=N9.TargetCandidate,distance=..5,sort=nearest,limit=1] add N9.Target
    tag @e[type=#lib:living,tag=N9.TargetCandidate,distance=..5] remove N9.TargetCandidate
