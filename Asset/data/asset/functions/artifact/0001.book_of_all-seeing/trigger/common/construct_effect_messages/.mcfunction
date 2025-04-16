#> asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/
# @output storage asset:temp
#   1.Lines: [string]
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_*/

#> Private
# @within function
#   asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/
#   asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/append/
    #declare score_holder $Stack
    #declare score_holder $DurationMinutes
    #declare score_holder $DurationSeconds

function api:entity/mob/effect/get/all

function lib:array/session/open
data modify storage lib: Array set from storage api: Return.EffectList
function lib:array/reverse
data modify storage asset:temp 01.Effects set from storage lib: Array
function lib:array/session/close

data modify storage asset:temp 01.EffectMessages set value []
execute if data storage asset:temp 01.Effects[0] run function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/foreach

execute unless data storage asset:temp 01.EffectMessages[0] run data modify storage asset:temp 01.EffectMessages append value '{"text":"エフェクト無し"}'

scoreboard players reset $Stack Temporary
scoreboard players reset $DurationMinutes Temporary
scoreboard players reset $DurationSeconds Temporary
