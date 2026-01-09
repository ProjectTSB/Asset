#> asset:artifact/1191.petals_of_spring_herald/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.allay.item_taken player @a[distance=..12] ~ ~ ~ 1.2 1.5
    playsound ogg:ambient.nether.crimson_forest.shine2 player @a[distance=..12] ~ ~ ~ 0.6 1.8

# バリア付与
    function asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $CurrentBarrier Temporary
    scoreboard players reset $OverHeal Temporary
    scoreboard players reset $MaxBarrier Temporary
    scoreboard players reset $Barrier Temporary
