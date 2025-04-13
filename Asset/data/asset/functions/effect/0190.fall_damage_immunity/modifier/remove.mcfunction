#> asset:effect/0190.fall_damage_immunity/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0190.fall_damage_immunity/end/
#   asset:effect/0190.fall_damage_immunity/remove/

# 落下ダメージ無効化
    data modify storage api: Argument.UUID set value [I;1,3,190,0]
    function api:modifier/fall_resistance/remove
