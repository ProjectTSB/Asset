#> asset:object/2089.cluster_munition/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2089/tick

#> Detonate
# @private
    #declare score_holder $2089.DetonateTime

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 起爆チェック
    execute store result score $2089.DetonateTime Temporary run data get storage asset:context this.DetonateTime
    execute if score @s General.Object.Tick >= $2089.DetonateTime Temporary run function asset:object/2089.cluster_munition/tick/detonate


# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# reset
    scoreboard players reset $2089.DetonateTime Temporary
