#> asset:effect/0344.spring_wind/barrier/remove
#
#
#
# @within function
#   asset:effect/0344.spring_wind/end/
#   asset:effect/0344.spring_wind/re-given/
#   asset:effect/0344.spring_wind/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:entity/player/absorption/remove
