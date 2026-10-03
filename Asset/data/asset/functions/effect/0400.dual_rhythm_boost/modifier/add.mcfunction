#> asset:effect/0400.dual_rhythm_boost/modifier/add
#
# @within function
#   asset:effect/0400.dual_rhythm_boost/given/
#   asset:effect/0400.dual_rhythm_boost/re-given/

# 同じUUIDの補正を置換するため、再付与しても倍率は重複しない。
# 初回given前に再付与された場合もre-givenから補正を設定する。
    data modify storage api: Argument.UUID set value [I;1,3,400,0]
    data modify storage api: Argument.Amount set value 0.2d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
