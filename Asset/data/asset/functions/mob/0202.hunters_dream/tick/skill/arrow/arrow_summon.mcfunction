#> asset:mob/0202.hunters_dream/tick/skill/arrow/arrow_summon
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/arrow/

#> private
# @private
    #declare tag 5M.ArrowThis

# 演出
    playsound entity.arrow.shoot hostile @a ~ ~ ~ 1 1
# 矢を召喚する
    data modify storage api: Argument.ID set value 2169
    data modify storage api: Argument.FieldOverride.Damage set value 7
    data modify storage api: Argument.FieldOverride.Speed set value 3
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
