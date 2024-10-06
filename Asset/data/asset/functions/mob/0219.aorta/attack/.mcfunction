#> asset:mob/0219.aorta/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0219.aorta/_/attack

# 演出
    execute at @p[tag=Victim,distance=..6] run particle dust 0.769 0 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound block.conduit.ambient hostile @a ~ ~ ~ 0.8 1.5 0

# ダメージ
    data modify storage api: Argument.Damage set value 37f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# 難易度値を取得
    function api:global_vars/get_difficulty

# 自身を回復
# 難易度値に比例して回復量を増加させる
    execute store result storage api: Argument.Heal int 250 run data get storage api: Return.Difficulty
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# ノーマル以上なら周囲に移動速度上昇を付与
    execute if predicate api:global_vars/difficulty/min/normal run effect give @e[type=#lib:living,tag=Enemy,distance=..5] speed 3 1 true
