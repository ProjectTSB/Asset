#> asset:mob/0410.heiloang/tick/event/tornado/summon
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/tornado/

# 弾召喚
    data modify storage api: Argument.ID set value 2117
    # data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 10.0f
    function api:object/summon

# # 演出
#     playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
#     playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
#     playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
#     playsound item.trident.return hostile @a ~ ~ ~ 2 0.7
#     particle flash ~ ~ ~ 1 1 1 0 4
#     particle firework ~ ~ ~ 1 1 1 0.3 10

# # 終了
#     kill @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1]
