#> asset:artifact/0921.celestial_star/trigger/detonate/
#
# 設置中の星を起爆する
# 演出を出し、強化段階に応じた倍率を星のEffectへ渡す
# 範囲内の敵へのダメージと味方の回復は、Effectが内側から外側へ5tickかけて行う
#
# @within function asset:artifact/0921.celestial_star/trigger/2.check_condition

# 強化段階を基礎値の20%単位の倍率へ変換する
# Stack1の100%を5として、強化1段ごとに1増やす
    execute store result score $921.Multiplier Temporary run data get storage api: Return.Effect.Stack
    scoreboard players add $921.Multiplier Temporary 4

# 星の位置で起爆の演出を出す
    function asset:artifact/0921.celestial_star/trigger/detonate/positioned.m with storage api: Return.Effect.Field.Pos

# 起爆の倍率を渡して、星のEffectを付け直す
    data modify storage api: Argument.ID set value 402
    execute store result storage api: Argument.FieldOverride.Detonation.Multiplier int 1 run scoreboard players get $921.Multiplier Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $921.Multiplier Temporary
