#> asset:mob/0369.prominence_spellbook/tick/summon
#
# 魔法を召喚する
#
# @within function asset:mob/0369.prominence_spellbook/tick/ready

# 最寄りのプレイヤーの方を見る
    tp @s ~ ~ ~ facing entity @p eyes

# RotationをFieldOverrideへ
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 弾を召喚
    data modify storage api: Argument.ID set value 2047
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# 消滅
    kill @s
