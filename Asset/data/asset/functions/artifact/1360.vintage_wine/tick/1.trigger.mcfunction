#> asset:artifact/1360.vintage_wine/tick/1.trigger
#
#
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

#
    execute if data storage asset:context id{offhand:1360} run function asset:artifact/1360.vintage_wine/tick/2.check_condition
