#> asset:mob/0369.prominence_spellbook/tick/3.summon
#
# 魔法を召喚する
#
# @within function asset:mob/0369.prominence_spellbook/tick/2.ready

# 最寄りのプレイヤーの方を見る
    tp @s ~ ~ ~ facing entity @p eyes

# RotationをFieldOverrideへ
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 弾を召喚
    data modify storage api: Argument.ID set value 2047
    function api:object/summon

# 消滅
    kill @s
