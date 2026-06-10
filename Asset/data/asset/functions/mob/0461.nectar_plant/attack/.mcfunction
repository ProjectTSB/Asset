#> asset:mob/0461.nectar_plant/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/461/attack

#> Private
# @private
    #declare score_holder $Duration

# 特定のMetadataがなければreturn
    execute unless data storage asset:context Attack{Metadata:"461.NectarPlant"} run return fail

# 難易度値取得
    function api:global_vars/get_difficulty

# 被回復量デバフを付与
    # Stack = Difficulty * 3
        execute store result storage api: Argument.Stack int 3 run data get storage api: Return.Difficulty
    # Duration = 100 + Difficulty * 100
        execute store result score $Duration Temporary run data get storage api: Return.Difficulty 100
        execute store result storage api: Argument.Duration int 1 run scoreboard players add $Duration Temporary 100
    # 付与
        data modify storage api: Argument.ID set value 64
        execute as @a[tag=Victim,distance=..32] run function api:entity/mob/effect/give
        function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Duration Temporary
