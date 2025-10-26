#> asset:artifact/1311.yearning_rose/damage_from_entity/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1311.yearning_rose/damage_from_entity/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出用Object
    execute as @e[type=#lib:living_without_player,tag=Attacker,tag=!Uninterferable,distance=..64,limit=1] at @s run function asset:artifact/1311.yearning_rose/damage_from_entity/object

# カウンター
    function asset:artifact/1311.yearning_rose/damage_from_entity/damage

# 回復
    function asset:artifact/1311.yearning_rose/damage_from_entity/heal
