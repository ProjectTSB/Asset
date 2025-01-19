#> asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
#
# テルツェット・サクセッション
#
# @within
#    function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/
#    function asset:mob/0411.behemoth/tick/event/terzetto_succession_b/

# フレア召喚
    data modify storage api: Argument.ID set value 2177
    data modify storage api: Argument.FieldOverride.IsSlow set value false
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 55.0f
    execute positioned ~ ~0.5 ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1]
