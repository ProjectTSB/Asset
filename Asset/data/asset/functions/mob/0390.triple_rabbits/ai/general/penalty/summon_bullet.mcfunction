#> asset:mob/0390.triple_rabbits/ai/general/penalty/summon_bullet
#
# ペナルティバレッドを召喚
#
# @within function asset:mob/0390.triple_rabbits/ai/general/penalty/check

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=slime,tag=this,distance=..100,sort=nearest,limit=1] MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2064
    function api:object/summon
