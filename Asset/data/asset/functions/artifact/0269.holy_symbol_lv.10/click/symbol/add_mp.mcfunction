#> asset:artifact/0269.holy_symbol_lv.10/click/symbol/add_mp
#
#
#
# @within function asset:artifact/0269.holy_symbol_lv.10/click/symbol/

# MP回復
    function api:mp/get_max
    execute store result storage api: Argument.Fluctuation int 0.19 run data get storage api: Return.MaxMP
    function api:mp/fluctuation
