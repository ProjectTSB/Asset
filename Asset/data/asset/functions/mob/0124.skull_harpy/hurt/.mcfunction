#> asset:mob/0124.skull_harpy/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/124/hurt

#> Private
# @private
    #declare score_holder $Cooldown

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# Attackerが近くにいなければreturn
    execute unless entity @p[tag=Attacker,distance=..32] run return fail

# 最後に被ダメしたTickから50Tick経っていれば逃げる
    execute store result score $Cooldown Temporary run time query gametime
    scoreboard players operation $Cooldown Temporary -= @s 3G.LatestEscapeTick
    execute if score $Cooldown Temporary matches 50.. run function asset:mob/0124.skull_harpy/hurt/escape
    scoreboard players reset $Cooldown Temporary
