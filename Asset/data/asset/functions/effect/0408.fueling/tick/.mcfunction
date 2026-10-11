#> asset:effect/0408.fueling/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0408.fueling/_/tick

#> Private
# @private
    #declare score_holder $MP
    #declare score_holder $PrevMP
    #declare score_holder $MPUsage

# Interval減算
    execute store result storage asset:context this.Inverval int 0.9999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run function asset:effect/0408.fueling/tick/countdown

# MP現在値を取得して差をもとめる
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP
    execute unless data storage asset:context this{PrevMP:-1} store result score $PrevMP Temporary run data get storage asset:context this.PrevMP
    execute if data storage asset:context this{PrevMP:-1} run scoreboard players operation $PrevMP Temporary = $MP Temporary
    scoreboard players operation $PrevMP Temporary -= $MP Temporary
    #前tickと比べてMPが減った($PrevMPが正である)ときのみMPUsageに加算して保存
    execute store result score $MPUsage Temporary run data get storage asset:context this.MPUsage
    execute if score $PrevMP Temporary matches 1.. store result storage asset:context this.MPUsage int 1 run scoreboard players operation $MPUsage Temporary += $PrevMP Temporary

# 現在値をFieldに保存
    execute store result storage asset:context this.PrevMP int 1 run scoreboard players get $MP Temporary

# リセット
    scoreboard players reset $MP Temporary
    scoreboard players reset $PrevMP Temporary
    scoreboard players reset $MPUsage Temporary
