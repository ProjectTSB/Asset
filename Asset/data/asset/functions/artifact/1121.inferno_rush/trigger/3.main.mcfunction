#> asset:artifact/1121.inferno_rush/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1121.inferno_rush/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    data modify storage api: Argument.ID set value 1075
    data modify storage api: Argument.FieldOverride.Damage set value {Min:65,Max:90}
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~1.3 ~ positioned ^ ^ ^1.6 anchored eyes run function api:object/summon

# 演出
    particle lava ~ ~ ~ 0 0 0 0 30
    particle flame ~ ~ ~ 0 0 0 0 30
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.7 0
