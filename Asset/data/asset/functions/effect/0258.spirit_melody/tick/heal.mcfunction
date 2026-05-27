#> asset:effect/0258.spirit_melody/tick/heal
#
# 回復する
#
# @within function asset:effect/0258.spirit_melody/tick/

#> Private
# @private
    #declare score_holder $HealPer
    #declare score_holder $MaxHealth

# 使用者の最大体力比例で回復させる
# 20回回復する

# 回復量算出
    function api:modifier/max_health/get
    execute store result score $HealPer Temporary run data get storage asset:context this.HealPer 10000
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth

# 回復
    execute store result storage api: Argument.Heal float 0.0001 run scoreboard players operation $HealPer Temporary *= $MaxHealth Temporary
    function api:heal/modifier
    execute as @a[distance=..8] run function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $HealPer Temporary
    scoreboard players reset $MaxHealth Temporary
