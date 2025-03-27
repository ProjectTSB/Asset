#> asset:mob/0227.frost_eye/tick/debuff
#
#
#
# @within function asset:mob/0227.frost_eye/tick/attack

# 難易度比例で鈍足を付与する ノーマル(イージー)では付与しない
    function api:global_vars/get_difficulty

# (難易度値 * 2)のスタックだけ鈍足を付与する
# フィールドで付与する鈍足を変えるようにする
    data modify storage api: Argument.ID set value 17
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    data modify storage api: Argument.Duration set value 80
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
