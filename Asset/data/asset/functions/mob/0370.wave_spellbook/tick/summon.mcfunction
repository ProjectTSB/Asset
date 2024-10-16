#> asset:mob/0370.wave_spellbook/tick/summon
#
# 魔法を召喚
#
# @within function asset:mob/0370.wave_spellbook/tick/ready

# プレイヤーの方を見る
# Rotation[1]は45で固定
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ 45

# FieldOverrideへRotationを突っ込む
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 弾を召喚
    data modify storage api: Argument.ID set value 2048
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# 消滅
    kill @s
