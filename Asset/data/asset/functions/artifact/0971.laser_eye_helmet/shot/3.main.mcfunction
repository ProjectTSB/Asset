#> asset:artifact/0971.laser_eye_helmet/shot/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0971.laser_eye_helmet/shot/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# 発砲
    execute anchored eyes positioned ^ ^ ^15 facing ^ ^ ^-1 summon marker run function asset:artifact/0971.laser_eye_helmet/shot/spread
    tag @s remove Landing

# リセット
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary
