#> asset:object/2151.haruclaire_icewall_center/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2151.haruclaire_icewall_center/tick/

# 弾召喚
    data modify storage api: Argument.ID set value 2150
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    execute positioned ~ ~0.6 ~ run function api:object/summon
