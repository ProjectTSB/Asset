#> asset:artifact/0876.uni/using_item/hit
#
#
# @within function
#    asset:artifact/0876.uni/using_item/
#    asset:artifact/0876.uni/using_item/bullet

# 一定の距離から距離減衰するための距離(適正距離をメートル*2で指定)
    scoreboard players set $Appropriate_Distance Temporary 7
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 10

# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4
# ダメージ設定
    # ダメージ
        scoreboard players add $Damage Temporary 34
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Water"
    # もし、適正距離じゃなかった場合、距離-適正距離=減少ダメージにする
        execute if score $Distance_Damping Temporary >= $Appropriate_Distance Temporary run function asset:artifact/0876.uni/using_item/damage_attenuation
    # ダメージ量確定
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $Damage Temporary
    # ダメージ
        function lib:damage/modifier
        execute as @e[tag=LandingTarget] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget
