#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack_thunder
#
# テルツェット・ラグナレク
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/

# 弾召喚
    data modify storage api: Argument.ID set value 2182
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    function api:object/summon

# # 終了
#     tag @s remove BE.AttackTarget
