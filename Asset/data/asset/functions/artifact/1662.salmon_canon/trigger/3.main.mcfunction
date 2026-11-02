#> asset:artifact/1662.salmon_canon/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1662.salmon_canon/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.salmon.flop player @a ~ ~ ~ 1 0.86
    playsound entity.puffer_fish.blow_up player @a ~ ~ ~ 1 0.86

# サケ召喚
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set value {Min:40,Max:60}
    # 弾速・射程
        data modify storage api: Argument.FieldOverride.Range set value 40
        data modify storage api: Argument.FieldOverride.Speed set value 4
    # 存在Tick
        data modify storage api: Argument.FieldOverride.Tick set value 400
    # 召喚
        data modify storage api: Argument.ID set value 1201
        execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
        execute positioned ~ ~0.3 ~ run function api:object/summon
