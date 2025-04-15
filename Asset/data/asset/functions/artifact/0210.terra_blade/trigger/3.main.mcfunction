#> asset:artifact/0210.terra_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0210.terra_blade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# VFX
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.75
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.25

# Objectを召喚
    data modify storage api: Argument.ID set value 1005
    data modify storage api: Argument.FieldOverride.Damage set value 35f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
