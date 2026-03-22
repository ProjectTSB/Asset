#> asset:effect/0014.receive_heal_debuff/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0014.receive_heal_debuff/end/
#   asset:effect/0014.receive_heal_debuff/re-given/
#   asset:effect/0014.receive_heal_debuff/remove/

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,-1,0]
    data modify storage api: Argument.UUID[2] set from storage asset:context originID
    function api:modifier/receive_heal/remove
