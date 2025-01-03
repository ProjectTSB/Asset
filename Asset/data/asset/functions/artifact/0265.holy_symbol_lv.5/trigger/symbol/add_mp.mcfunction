#> asset:artifact/0265.holy_symbol_lv.5/trigger/symbol/add_mp
#
#
#
# @within function asset:artifact/0265.holy_symbol_lv.5/trigger/symbol/

# MP回復
    function api:mp/get_max
    execute store result storage api: Argument.Fluctuation int 0.09 run data get storage api: Return.MaxMP
    function api:mp/fluctuation
