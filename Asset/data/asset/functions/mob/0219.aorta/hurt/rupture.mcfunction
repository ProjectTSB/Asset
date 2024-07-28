#> asset:mob/0219.aorta/hurt/rupture
#
# 破裂する
#
# @within function asset:mob/0219.aorta/hurt/check_health

# 演出
    particle explosion ~ ~1.2 ~ 0.5 0.5 0.5 0 5 normal @a
    particle block nether_wart_block ~ ~1.2 ~ 0.4 0.4 0.4 0 50 normal @a
    particle dust 0.769 0 0 2.5 ~ ~1.2 ~ 2 0.4 2 0 50 normal @a
    playsound block.conduit.ambient hostile @a ~ ~ ~ 1 1.2 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 1.2 0

# 難易度値を取得
    function api:global_vars/get_difficulty

# 周囲を回復
# 難易度値に比例して回復量が増加
    execute store result storage api: Argument.Heal int 200 run data get storage api: Return.Difficulty
    function api:heal/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!this,distance=..5] run function api:heal/
    function api:heal/reset

# 移動速度上昇を付与
    effect give @e[type=#lib:living,tag=Enemy,tag=!this,distance=..5] speed 3 2 true

# 奈落行き
    tp @s ~ -999 ~
