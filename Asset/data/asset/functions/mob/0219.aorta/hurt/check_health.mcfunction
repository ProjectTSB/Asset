#> asset:mob/0219.aorta/hurt/check_health
#
# 自身の現在体力をチェックする
#
# @within function asset:mob/0219.aorta/hurt/

#> Private
# @private
    #declare score_holder $Health

# 体力を取得
    function api:mob/get_health
    execute store result score $Health Temporary run data get storage api: Return.Health

# 体力が一定以下の場合、高確率で破裂する
# ノーマルとハード以上で確率を変える
    execute if predicate api:global_vars/difficulty/normal if score $Health Temporary matches ..400 if predicate lib:random_pass_per/40 run function asset:mob/0219.aorta/hurt/rupture
    execute if predicate api:global_vars/difficulty/3_blessless if score $Health Temporary matches ..400 if predicate lib:random_pass_per/70 run function asset:mob/0219.aorta/hurt/rupture

# スコアリセット
    scoreboard players reset $Health Temporary
