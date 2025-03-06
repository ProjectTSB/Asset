#> asset:object/1087.spinnrade/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1087/recursive

#> Private
# @private
#declare tag 1087.TargetCandidate

# ホーミング用の遅延
    execute store result storage asset:context this.HomingDelay int 0.9999999999 run data get storage asset:context this.HomingDelay 1
# 前方にいる一番近い敵をターゲットする
    execute if data storage asset:context this{HomingDelay:0} positioned ^ ^ ^15 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..15] run tag @s add 1087.TargetCandidate
    execute if data storage asset:context this{HomingDelay:0} facing entity @e[type=#lib:living,tag=1087.TargetCandidate,distance=..15,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if data storage asset:context this{HomingDelay:0} run tag @e[type=#lib:living,tag=1087.TargetCandidate,distance=..50] remove 1087.TargetCandidate

# 演出
    particle dust 1 0.761 0.831 1 ~ ~ ~ 0 0 0 0 1
    execute if predicate lib:random_pass_per/20 run particle minecraft:cherry_leaves ~ ~ ~ 0 0 0 1 1

# super 呼び出し
    execute at @s run function asset:object/super.method
