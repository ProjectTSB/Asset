#> asset:artifact/0462.456_dice/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0462.456_dice/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1

# サイコロを振る
    execute store result storage api: Argument.FieldOverride.Num int 1 run random value 4..6

# ダイス召喚
    data modify storage api: Argument.ID set value 1011
    data modify storage api: Argument.FieldOverride.Damage set value 75f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^2 positioned ~ ~-0.3 ~ run function api:object/summon
