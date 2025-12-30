#> asset:object/1049.lexiel_rod_fireball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1049/tick

#> Private
# @private
#declare tag 1049.TargetCandidate

# ホーミング用の遅延
    execute store result storage asset:context this.HomingDelay int 0.9999999999 run data get storage asset:context this.HomingDelay 1
# 前方にいる一番近い敵をターゲットする
    execute if data storage asset:context this{HomingDelay:0} positioned ^ ^ ^15 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15] run tag @s add 1049.TargetCandidate
    execute if data storage asset:context this{HomingDelay:0} facing entity @e[type=#lib:living,tag=1049.TargetCandidate,distance=..15,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-450 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if data storage asset:context this{HomingDelay:0} run tag @e[type=#lib:living,tag=1049.TargetCandidate,distance=..30] remove 1049.TargetCandidate

# super 呼び出し
    execute at @s run function asset:object/super.tick
