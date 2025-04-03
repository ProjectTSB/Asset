#> asset:effect/0326.deep_slash/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0326.deep_slash/_/end

# 補正を削除する
    function asset:effect/0326.deep_slash/modifier/remove

# 攻撃用Objectを召喚
    data modify storage api: Argument.ID set value 1134
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
