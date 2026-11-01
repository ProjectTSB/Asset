#> asset:effect/0427.power_of_curse/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0427.power_of_curse/_/tick

#> private
# @private
    #declare score_holder $E0427.MP

# MPが0ならEffect428を付与
    function api:mp/get_current
    execute store result score $E0427.MP Temporary run data get storage api: Return.CurrentMP
    execute if score $E0427.MP Temporary matches 0 run function asset:effect/0427.power_of_curse/tick/remove

# リセット
    scoreboard players reset $E0427.MP Temporary
