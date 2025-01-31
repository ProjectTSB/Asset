#> asset:mob/0217.medousa_eye/tick/announce/
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/

# 予告用再帰
    execute positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/announce/recursive

# リセット
    tag @s remove Landing
