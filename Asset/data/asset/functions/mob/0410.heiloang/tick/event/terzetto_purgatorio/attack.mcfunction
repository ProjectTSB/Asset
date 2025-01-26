#> asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/

# 弾召喚
    data modify storage api: Argument.ID set value 2182
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 65.0f
    execute positioned ~ ~ ~ run function api:object/summon

# 演出
    particle flash ~ ~ ~ 1 1 1 0 4 force
    particle firework ~ ~ ~ 1 1 1 0.3 10 force

# 終了
    tag @s remove BE.AttackTarget
