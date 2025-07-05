#> asset:artifact/0237.schrodingers_cat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0237.schrodingers_cat/trigger/2.check_condition

#> Private
# @within function
#   asset:artifact/0237.schrodingers_cat/trigger/3.main
#   asset:artifact/0237.schrodingers_cat/trigger/give_fall_resistance
#declare score_holder $HasTropicalFish

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く
execute store result score $HasTropicalFish Temporary run clear @s tropical_fish 1
execute if score $HasTropicalFish Temporary matches 0 if predicate lib:random_pass_per/25 run return run function asset:artifact/0237.schrodingers_cat/trigger/give_fall_resistance
execute if score $HasTropicalFish Temporary matches 1 if predicate lib:random_pass_per/50 run return run function asset:artifact/0237.schrodingers_cat/trigger/give_fall_resistance

tellraw @s {"text":"猫いなかった……。","color":"gray"}
scoreboard players reset $HasTropicalFish Temporary
