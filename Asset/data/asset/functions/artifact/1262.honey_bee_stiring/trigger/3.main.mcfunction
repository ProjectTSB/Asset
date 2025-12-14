#> asset:artifact/1262.honey_bee_stiring/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1262.honey_bee_stiring/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.honey_block.step player @a ~ ~ ~ 0.7 1.5
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 0.6 1.4

# フルチャージ
    execute if entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.Damage set value 400
    execute if entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.StepPerTick set value 5
    execute if entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.Range set value 50
    execute if entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.PoisonDamageInterval set value 10
    execute if entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.FullCharge set value true

# 非フルチャージ
    execute unless entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.Damage set value 200
    execute unless entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.StepPerTick set value 1
    execute unless entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.Range set value 20
    execute unless entity @s[tag=Z2.FullCharge] run data modify storage api: Argument.FieldOverride.PoisonDamageInterval set value 20

# 鈍足と毒の効果時間(共通)
    data modify storage api: Argument.FieldOverride.Duration set value 80

# 毒ダメージ(チャージ関係なく共通)
    data modify storage api: Argument.FieldOverride.PoisonDamage set value 50

# Object召喚
    data modify storage api: Argument.ID set value 1140
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
