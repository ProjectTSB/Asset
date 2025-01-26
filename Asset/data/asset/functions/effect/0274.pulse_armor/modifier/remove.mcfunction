#> asset:artifact/0274.pulse_armor/modifier/remove
# @within function
#   asset:artifact/0274.pulse_armor/re-given/
#   asset:artifact/0274.pulse_armor/remove/

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,3,274,0]
    function api:modifier/mp_regen/remove
