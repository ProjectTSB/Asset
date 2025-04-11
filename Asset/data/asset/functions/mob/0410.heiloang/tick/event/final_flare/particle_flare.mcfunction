#> asset:mob/0410.heiloang/tick/event/final_flare/particle_flare
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# フレア召喚
    data modify storage api: Argument.ID set value 2177
    data modify storage api: Argument.FieldOverride.IsVfx set value true
    execute positioned ~ ~0.1 ~ run function api:object/summon

# 終了
    kill @s
