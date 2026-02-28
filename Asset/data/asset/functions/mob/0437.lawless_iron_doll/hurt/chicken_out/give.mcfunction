#> asset:mob/0437.lawless_iron_doll/hurt/chicken_out/give
#
# 臆病風を付与してやる
#
# @within function asset:mob/0437.lawless_iron_doll/hurt/

# タイトル表示
    title @p title {"text":""}
    title @p subtitle {"text":"ここから降りたほうがよさそうだ"}
    title @s times 0 20 5

# 演出
    playsound minecraft:entity.illusioner.cast_spell neutral @s ~ ~ ~ 1 1
    particle minecraft:dust_plume ~ ~1 ~ 0.2 0.2 0.2 0.1 50 force @a[distance=..32]

# 実際の付与
    data modify storage api: Argument.ID set value 654
    data modify storage api: Argument.Stack set value 1
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
