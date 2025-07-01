#> asset:effect/0190.fall_resistance/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0190.fall_resistance/end/
#   asset:effect/0190.fall_resistance/remove/

# 落下ダメージ無効化
    data modify storage api: Argument.UUID set value [I;1,3,190,0]
    function api:modifier/fall_resistance/remove
