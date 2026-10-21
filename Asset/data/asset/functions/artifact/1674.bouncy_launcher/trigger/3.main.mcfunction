#> asset:artifact/1674.bouncy_launcher/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1674.bouncy_launcher/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 召喚
    data modify storage api: Argument.ID set value 1204
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.Damage set value 5d
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    #反射回数上限
    data modify storage api: Argument.FieldOverride.ReflectionLimit set value 35
    #射程（Range*0.4m）
    data modify storage api: Argument.FieldOverride.Range set value 75
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon

#vfx
    execute anchored eyes positioned ^ ^ ^0.5 run playsound tsb_sounds:launcher_shot player @s ~ ~ ~ 1 0.8
