#> asset:mob/0370.wave_spellbook/tick/3.summon
#
# 魔法を召喚
#
# @within function asset:mob/0370.wave_spellbook/tick/2.ready

# プレイヤーの方を見る
# Rotation[1]は45で固定
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ 45

# FieldOverrideへRotationを突っ込む
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 弾を召喚
    data modify storage api: Argument.ID set value 2048
    function api:object/summon

# 消滅
    kill @s
