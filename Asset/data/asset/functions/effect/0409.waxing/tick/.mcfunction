#> asset:effect/0409.waxing/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0409.waxing/_/tick

#> Private
# @private
    #declare score_holder $MP
    #declare score_holder $PrevMP
    #declare score_holder $MPHealed

# MP現在値を取得して差をもとめる
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP
    execute unless data storage asset:context this{PrevMP:-1} store result score $PrevMP Temporary run data get storage asset:context this.PrevMP
    execute if data storage asset:context this{PrevMP:-1} run scoreboard players operation $PrevMP Temporary = $MP Temporary
    scoreboard players operation $PrevMP Temporary -= $MP Temporary
    #前tickと比べてMPが増えた($PrevMPが負である)ときのみ、絶対値をMPHealedに加算して保存
    execute store result score $MPHealed Temporary run data get storage asset:context this.MPHealed
    execute if score $PrevMP Temporary matches ..-1 store result storage asset:context this.MPHealed int 1 run scoreboard players operation $MPHealed Temporary -= $PrevMP Temporary

# 現在値をFieldに保存
    execute store result storage asset:context this.PrevMP int 1 run scoreboard players get $MP Temporary

# リセット
    scoreboard players reset $MP Temporary
    scoreboard players reset $PrevMP Temporary
    scoreboard players reset $MPHealed Temporary
