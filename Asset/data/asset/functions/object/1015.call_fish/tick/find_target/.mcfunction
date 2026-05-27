#> asset:object/1015.call_fish/tick/find_target/
#
#
#
# @within function asset:object/1015.call_fish/tick/

# ターゲットにできる敵がいなければreturn
    execute unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10,limit=1] run return fail

# ターゲット可能な敵を近い順に探す
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest] run function asset:object/1015.call_fish/tick/find_target/ready

# ターゲットがいれば攻撃する
    execute at @e[type=#lib:living,tag=1015.Target,distance=..10] run function asset:object/1015.call_fish/tick/attack

# リセット
    data remove storage asset:temp 1015
