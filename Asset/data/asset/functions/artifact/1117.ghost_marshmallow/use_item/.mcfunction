#> asset:artifact/1117.ghost_marshmallow/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1117/use_item/


# 演出
    particle soul ~ ~1.2 ~ 1 0.5 1 0 60 normal @a
    playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 0.4 1.6

# MP回復
    data modify storage api: Argument.Fluctuation set value 30
    function api:mp/fluctuation

# 低速落下と透明化
    effect give @s slow_falling 15 0 true
    effect give @s invisibility 15 0 true
