#> asset:effect/0003.attack_magic_buff/modifier/remove
# @within function asset:effect/0003.attack_magic_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,3,0]
    function api:modifier/attack/magic/remove
