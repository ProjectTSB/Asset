#> asset:mob/0182.skull_raven/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/182/hurt

#> Private
# @private
    #declare score_holder $Cooldown

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# Attackerが近くにいなければreturn
    execute unless entity @p[tag=Attacker,distance=..32] run return fail

# 最後に被ダメしたTickから50Tick経っていれば逃げる
    execute store result score $Cooldown Temporary run time query gametime
    scoreboard players operation $Cooldown Temporary -= @s 52.LatestEscapeTick
    execute if score $Cooldown Temporary matches 50.. run function asset:mob/0182.skull_raven/hurt/escape
    scoreboard players reset $Cooldown Temporary
