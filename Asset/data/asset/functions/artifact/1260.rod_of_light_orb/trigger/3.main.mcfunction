#> asset:artifact/1260.rod_of_light_orb/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1260.rod_of_light_orb/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# playsound
    playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 0.6 2

# 視点先に召喚する
    execute anchored eyes positioned ^ ^ ^0.25 run function asset:artifact/1260.rod_of_light_orb/trigger/recursive

# リセット
    scoreboard players reset $Recursive Temporary
    tag @s remove Check
