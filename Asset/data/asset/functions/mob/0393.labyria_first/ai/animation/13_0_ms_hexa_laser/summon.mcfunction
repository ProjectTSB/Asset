#> asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/summon
#
# ヘキサレーザーコア召喚
#
# @within function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/

# 音
    playsound entity.zombie_villager.converted hostile @a[distance=..64] ~ ~ ~ 1 1.5 0.5

# マーカーを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ 0

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2011
    execute at 0-0-0-0-0 run function api:object/summon

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
