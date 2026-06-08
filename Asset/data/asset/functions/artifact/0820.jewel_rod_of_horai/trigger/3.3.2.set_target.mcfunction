#> asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.2.set_target
#
# 神器の攻撃対象を決定する
# @output
#   score $MS.TargetUUID 攻撃対象のMobUUID
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.main

#> target
# @within
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.2.set_target
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/search_target
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block
    #declare tag MS.Target
    #declare tag MS.TargetCandidate

# 候補を探索
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..12] add MS.TargetCandidate

# 四角錐の範囲外の敵を除外
    execute as @e[type=#lib:living,tag=MS.TargetCandidate,distance=..12] run function asset:artifact/0820.jewel_rod_of_horai/trigger/search_target

# 物陰に隠れた状態の敵を除外
    execute as @e[type=#lib:living,tag=MS.TargetCandidate,distance=..12,sort=nearest] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes run function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block

#1番手前の候補のUUID取得
    execute store result score $MS.TargetUUID Temporary run scoreboard players get @e[type=#lib:living,tag=MS.Target,distance=..12,sort=nearest,limit=1] MobUUID

#リセット
    tag @e[type=#lib:living,tag=MS.TargetCandidate,distance=..12] remove MS.TargetCandidate
    tag @e[type=#lib:living,tag=MS.Target,distance=..12] remove MS.Target
