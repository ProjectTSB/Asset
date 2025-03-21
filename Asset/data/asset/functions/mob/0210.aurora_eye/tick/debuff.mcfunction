#> asset:mob/0210.aurora_eye/tick/debuff
#
# デバフを付与
#
# @within function asset:mob/0210.aurora_eye/tick/attack

# (難易度値 - 1)のStackのEffectを付与する
# このmcfの実行者はプレイヤー
# このmcfの実行条件はノーマル以上なのでStack0にはならない

# 難易度値を取得し1減らす
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    scoreboard players remove $Difficulty Temporary 1

# Effectを付与
    data modify storage api: Argument.ID set value 605
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $Difficulty Temporary
    data modify storage api: Argument.Duration set value 120
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Difficulty Temporary
