#> asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/summon
#
# 魔弾魔法陣召喚
#
# @within function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2009
    function api:object/summon
