#> asset:effect/0418.drowning/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0418.drowning/_/end

#> private
# @private
    #declare score_holder $Initial
    #declare score_holder $Current

# MPを発動時と比較、大きいならEffect419を付与
    execute store result score $Initial Temporary run data get storage asset:context this.InitialMP
    function api:mp/get_current
    execute store result score $Current Temporary run data get storage api: Return.CurrentMP

    data modify storage api: Argument.ID set value 419
    execute if score $Current Temporary >= $Initial Temporary run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Initial Temporary
    scoreboard players reset $Current Temporary
