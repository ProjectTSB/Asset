#> asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/attack_icicle
#
# テルツェット・サクセッション
#
# @within
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_b/
#    function asset:mob/0412.tiamat/tick/event/terzetto_aligning/
#    function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# アイシクル召喚
    data modify storage api: Argument.ID set value 2178
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.DiveIcicle
    execute positioned ~ ~ ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1]
