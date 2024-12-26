#> asset:effect/0276.unending_thunder/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0276.unending_thunder/end/
#   asset:effect/0276.unending_thunder/remove/

# 雷攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,3,276,0]
    function api:modifier/attack/thunder/remove
