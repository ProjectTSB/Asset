#> asset:object/2195.eclael_death_animation/tick/drop
#
# Objectのtick時の処理
#
# @within asset:object/2195.eclael_death_animation/tick/event

# ボスドロ
    data modify storage api: Argument.ID set value 1034
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
