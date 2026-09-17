#> asset:artifact/1613.horn_of_thunderbolt/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1613.horn_of_thunderbolt/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# Victimとして実行
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=Enemy,distance=10..64,sort=random,limit=1] at @s run function asset:artifact/1613.horn_of_thunderbolt/trigger/as_victim
