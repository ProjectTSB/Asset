#> asset:artifact/1257.thor_staff/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1257.thor_staff/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 1.5

# 視点先に召喚する
    execute anchored eyes positioned ^ ^ ^0.25 run function asset:artifact/1257.thor_staff/trigger/recursive

# リセット
    scoreboard players reset $Recursive Temporary
    tag @s remove Check
