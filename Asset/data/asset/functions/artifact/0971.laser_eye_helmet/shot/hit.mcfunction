#> asset:artifact/0971.laser_eye_helmet/shot/hit
#
#
# @within function
#    asset:artifact/0971.laser_eye_helmet/shot/3.main
#    asset:artifact/0971.laser_eye_helmet/shot/bullet

# 一定の距離から距離減衰するための距離(適正距離をメートル*2で指定)
    scoreboard players set $Appropriate_Distance Temporary 5
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 15
# 最大ダメージ
    scoreboard players add $Damage Temporary 50
# もし、適正距離じゃなかった場合、距離-適正距離=減少ダメージにする
    execute if score $Distance_Damping Temporary >= $Appropriate_Distance Temporary run function asset:artifact/0971.laser_eye_helmet/shot/damage_attenuation

# ダメージ設定
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=LandingTarget,distance=..20,limit=1] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget
