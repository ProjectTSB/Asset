#> asset:object/1073.arrow_of_attraction/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1073/hit_entity

#> Private
# @private
    #declare tag 1073.TargetCandidate
    #declare score_holder $UserID

#> Private
# @within function asset:object/1073.arrow_of_attraction/hit_entity/*
    #declare tag 1073.Player
    #declare tag 1073.Target

# プレイヤー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1073.Player
    scoreboard players reset $UserID Temporary

# ターゲット特定
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#lib:living,tag=!PlayerShouldInvulnerable,tag=!Immovable,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 run tag @s[dx=0] add 1073.TargetCandidate
    execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @e[type=#lib:living,tag=1073.TargetCandidate,dx=0,sort=random,limit=1] add 1073.Target
    execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @e[type=#lib:living,tag=1073.TargetCandidate,dx=0] remove 1073.TargetCandidate
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#lib:living,tag=1073.Target,dx=0] run function asset:object/1073.arrow_of_attraction/hit_entity/as_target

# リセット
    tag @a[tag=1073.Player] remove 1073.Player

# super 呼び出し
    function asset:object/super.method
