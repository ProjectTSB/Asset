#> asset:effect/0267.dreaming_veil/barrier/add
#
# バリアを付与する
#
# @within function
#   asset:effect/0267.dreaming_veil/given/
#   asset:effect/0267.dreaming_veil/re-given/

# フィールドからバリア量を取得
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier

# バリア設定
    data modify storage api: Argument.UUID set value [I;1,3,267,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0267.dreaming_veil/barrier/break"
    function api:entity/player/absorption/add
