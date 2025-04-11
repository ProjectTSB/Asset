#> asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/

# 弾召喚
    data modify storage api: Argument.ID set value 2182
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.TerPurgThunder
    function api:object/summon

# 終了
    tag @s remove BE.AttackTarget
