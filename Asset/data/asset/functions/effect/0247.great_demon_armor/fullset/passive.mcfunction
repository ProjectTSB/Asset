#> asset:effect/0247.great_demon_armor/fullset/passive
# @within function asset:effect/0247.great_demon_armor/tick/

#> Private
# @private
    #declare score_holder $6V.IGT

# tickを取得
    execute store result score $6V.IGT Temporary run data get storage asset:context this.Tick
# 12以上なら回復
    scoreboard players add $6V.IGT Temporary 1
    execute if score $6V.IGT Temporary matches 12.. run function asset:effect/0247.great_demon_armor/fullset/heal
    execute if score $6V.IGT Temporary matches 12.. run scoreboard players remove $6V.IGT Temporary 12
    execute store result storage asset:context this.Tick int 1 run scoreboard players get $6V.IGT Temporary
# リセット
    scoreboard players reset $6V.IGT Temporary
