#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/effect_icicle
#
# テルツェット・ラグナレク
#
# @within
#    function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_0_icicle
#    function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_1_icicle

# 演出
    particle cloud ~ ~1 ~ 1 1 1 0.1 6
    particle explosion ~ ~1 ~ 1 0.5 1 0 4
    data modify storage api: Argument.ID set value 2175
    execute if entity @s[tag=BG.Temp.Dummy] run data modify storage api: Argument.ID set value 2180
    data modify storage api: Argument.FieldOverride.OverrideScale set value [7f, 5f, 7f]
    execute if predicate lib:random_pass_per/30 run data modify storage api: Argument.FieldOverride.OverrideScale set value [8f, 6f, 8f]
    execute if predicate lib:random_pass_per/30 run data modify storage api: Argument.FieldOverride.OverrideScale set value [9f, 7f, 9f]
    execute positioned ^ ^ ^ run function api:object/summon

# 終了
    kill @s
