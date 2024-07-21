#> asset:effect/0206.spirit_state/record
# @within function
#   asset:effect/0206.spirit_state/given/
#   asset:effect/0206.spirit_state/re-given/

# フィールドに記録
    function api:data_get/player_game_type
    data modify storage asset:context this.PrevMode set from storage api: playerGameType
    function api:data_get/pos
    data modify storage asset:context this.PrevX set from storage api: Pos[0]
    data modify storage asset:context this.PrevY set from storage api: Pos[1]
    data modify storage asset:context this.PrevZ set from storage api: Pos[2]
    function api:data_get/dimension
    data modify storage asset:context this.PrevDim set from storage api: Dimension
