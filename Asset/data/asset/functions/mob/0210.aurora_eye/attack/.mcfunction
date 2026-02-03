#> asset:mob/0210.aurora_eye/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/210/attack

# 特定のMetadataがなければreturn
    execute unless data storage asset:context Attack.Metadata.AuroraEye run return fail

# 難易度値取得
    function api:global_vars/get_difficulty

# 対象にデバフを付与
    data modify storage api: Argument.ID set value 605
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    execute if data storage asset:context Attack.Metadata{AuroraEye: "Melee"} run data modify storage api: Argument.Duration set value 120
    execute if data storage asset:context Attack.Metadata{AuroraEye:"Bullet"} run data modify storage api: Argument.Duration set value 80
    execute as @a[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
