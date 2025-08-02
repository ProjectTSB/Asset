#> asset:object/1088.aigis_vitae/tick/phase/proceed
#
# フェーズ進行処理
#
# @within function asset:object/1088.aigis_vitae/tick/phase/**

#> private
# @private
    #declare score_holder $Phase

# フェーズ進行
    execute store result score $Phase Temporary run data get storage asset:context this.Phase
    execute store result storage asset:context this.Phase int 1 run scoreboard players add $Phase Temporary 1

# リセット
    scoreboard players set @s General.Object.Tick 0
    scoreboard players reset $Phase Temporary
