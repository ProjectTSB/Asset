#> asset:artifact/1177.spinnrade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1177.spinnrade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1 2
    playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 1.4
# 矢を召喚する
    data modify storage api: Argument.ID set value 1087
    execute if entity @s[tag=WP.FullCharge] run data modify storage api: Argument.FieldOverride.Damage set value 740
    execute unless entity @s[tag=WP.FullCharge] run data modify storage api: Argument.FieldOverride.Damage set value 550
    execute if entity @s[tag=WP.FullCharge] run data modify storage api: Argument.FieldOverride.StepPerTick set value 8
    execute unless entity @s[tag=WP.FullCharge] run data modify storage api: Argument.FieldOverride.StepPerTick set value 4
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
