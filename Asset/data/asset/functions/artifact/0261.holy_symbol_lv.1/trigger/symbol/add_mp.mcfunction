#> asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/add_mp
#
#
#
# @within function asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/

# MP回復
    function api:mp/get_max
    execute store result storage api: Argument.Fluctuation int 0.01 run data get storage api: Return.MaxMP
    function api:mp/fluctuation
