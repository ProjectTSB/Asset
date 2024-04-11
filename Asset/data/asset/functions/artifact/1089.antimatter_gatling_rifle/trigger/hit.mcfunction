#> asset:artifact/1089.antimatter_gatling_rifle/trigger/hit
#
#
# @within function
#    asset:artifact/1089.antimatter_gatling_rifle/trigger/bullet


# ここから先は神器側の効果の処理を書く

# 撃っている間うごけない
    effect give @s slowness 1 2 true

# 一定の距離から距離減衰するための距離(適正距離をメートル*2で指定)
    scoreboard players set $Appropriate_Distance Temporary 14
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 25

# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4
# ダメージ設定
    # ダメージ
        scoreboard players add $Damage Temporary 50
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "None"
    # もし、適正距離じゃなかった場合、距離-適正距離=減少ダメージにする
        execute if score $Distance_Damping Temporary >= $Appropriate_Distance Temporary run function asset:artifact/1089.antimatter_gatling_rifle/trigger/damage_attenuation
    # ダメージ量確定
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $Damage Temporary
    # ダメージ
        function lib:damage/modifier
        execute as @e[tag=LandingTarget] run function lib:damage/
# リセット
    function lib:damage/reset

# リセット
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary


# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget
