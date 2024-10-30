#> asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/summon
#
# ヘキサレーザーコア召喚
#
# @within function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/

# 音
    playsound entity.zombie_villager.converted hostile @a[distance=..64] ~ ~ ~ 1 1.5 0.5

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2011
    function api:object/summon
