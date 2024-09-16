#> asset:effect/0220.dream_of_burning_butterfly/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0220.dream_of_burning_butterfly/end/
#   asset:effect/0220.dream_of_burning_butterfly/re-given/
#   asset:effect/0220.dream_of_burning_butterfly/remove/

# 火攻撃補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,220,0]
    function api:modifier/attack/fire/remove
