#> asset:mob/0390.triple_rabbits/ai/general/summon_bullet
#
# ペナルティバレッドを召喚
#
# @within function asset:mob/0390.triple_rabbits/tick/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2064
    function api:object/summon
