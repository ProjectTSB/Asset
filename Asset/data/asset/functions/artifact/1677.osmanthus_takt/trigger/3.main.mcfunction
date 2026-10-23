#> asset:artifact/1677.osmanthus_takt/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1677.osmanthus_takt/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1.0 2 0.0
    playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1.0 1.8 0.0
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1.0 1.6 0.0
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1.0 1.8 0.0
    playsound entity.illusioner.cast_spell player @a ~ ~ ~ 0.6 1.8
    particle dust 1 0.75 0.2 1 ~ ~1 ~ 0.3 0.3 0.3 0 15 normal @a

# 召喚
# 一回目の爆発のダメージ
    data modify storage api: Argument.FieldOverride.Damage set value 40d
# 二回目の爆発の威力（ダメージ・MP回復量に掛ける割合 %）
    data modify storage api: Argument.FieldOverride.SecondRate set value 50
# 二回目の爆発の半径（m）
    data modify storage api: Argument.FieldOverride.SecondRadius set value 1.0d
# 金木犀の香りが爆発するまでの時間（tick）
    data modify storage api: Argument.FieldOverride.DebuffDuration set value 30
# 金木犀の香りを付与する敵の最大数
    data modify storage api: Argument.FieldOverride.MaxDebuffTargets set value 3
# 一回目の爆発によるMP回復量
    data modify storage api: Argument.FieldOverride.MPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.ID set value 1208
    execute anchored eyes positioned ^ ^-0.3 ^0.3 run function api:object/summon
