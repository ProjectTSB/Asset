#> asset:effect/0371.tsukimi/barrier/add
#
#
#
# @within function
#   asset:effect/0371.tsukimi/given/
#   asset:effect/0371.tsukimi/re-given/

# バリア設定
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0371.tsukimi/barrier/break"
    function api:entity/player/absorption/add

tellraw @a {"storage":"asset:context","nbt":"this"}
