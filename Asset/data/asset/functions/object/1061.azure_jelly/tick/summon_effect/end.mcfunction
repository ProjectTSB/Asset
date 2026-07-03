#> asset:object/1061.azure_jelly/tick/summon_effect/end
#
#
#
# @within function asset:object/1061.azure_jelly/tick/summon_effect/

# 終了
    data modify storage asset:context this.IsFirst set value false
    scoreboard players set @s General.Object.Tick -1
