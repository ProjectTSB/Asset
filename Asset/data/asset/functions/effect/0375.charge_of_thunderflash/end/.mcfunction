#> asset:effect/0375.charge_of_thunderflash/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0375.charge_of_thunderflash/_/end

# 範囲攻撃
    function asset:effect/0375.charge_of_thunderflash/end/teleport/

# 召喚
    data modify storage api: Argument.ID set value 1167
    function api:object/summon
