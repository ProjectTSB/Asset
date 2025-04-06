#> asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
#
# テルツェット・サクセッション
#
# @within
#    function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/
#    function asset:mob/0411.behemoth/tick/event/terzetto_succession_b/
#    function asset:mob/0411.behemoth/tick/event/terzetto_aligning/
#    function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/
#    function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/

# フレア召喚
    data modify storage api: Argument.ID set value 2177
    data modify storage api: Argument.FieldOverride.IsSlow set value false
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.DiveFlare
    execute positioned ~ ~0.1 ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1]
