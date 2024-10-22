#> asset:object/2049.lightning_magic/hit_entity/debuff
#
# デバフを付与
#
# @within function asset:object/2049.lightning_magic/hit_entity/

#> Private
# @private
    #declare score_holder $Difficulty

# 難易度値を取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# デバフを付与
# Duration = 50(N+1)Tick
# Stack = (Difficulty - 1)
    data modify storage api: Argument.ID set value 616
    execute store result storage api: Argument.Duration int 50 run scoreboard players add $Difficulty Temporary 1
    execute store result storage api: Argument.Stack int 1 run scoreboard players remove $Difficulty Temporary 2
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    function api:entity/mob/effect/give
