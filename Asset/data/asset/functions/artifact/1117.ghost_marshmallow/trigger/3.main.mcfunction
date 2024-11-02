#> asset:artifact/1117.ghost_marshmallow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1117.ghost_marshmallow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle soul ~ ~1.2 ~ 1 0.5 1 0 60 normal @a
    playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 0.4 1.6

# MP回復
    data modify storage api: Argument.Fluctuation set value 80
    function api:mp/fluctuation

# 低速落下と透明化
    effect give @s slow_falling 15 0 true
    effect give @s invisibility 15 0 true
