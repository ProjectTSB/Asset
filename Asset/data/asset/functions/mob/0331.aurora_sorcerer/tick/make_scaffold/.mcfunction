#> asset:mob/0331.aurora_sorcerer/tick/make_scaffold/
#
# 足場を作る
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# 足場生成不可Tickを設定
    data modify storage asset:context this.CannotMakeScaffoldTick set value 10

# 慣性リセット
    #tp @s 0 0 0
    #tp @s ~ ~ ~
    data modify entity @s Motion[0] set value 0f
    data modify entity @s Motion[2] set value 0f

# 足場用Object召喚
    data modify storage api: Argument.ID set value 2221
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~-1 ~ run function api:object/summon
