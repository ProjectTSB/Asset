#> asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
#
# スモークボム発射
#
# @within function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2003
    function api:object/summon
