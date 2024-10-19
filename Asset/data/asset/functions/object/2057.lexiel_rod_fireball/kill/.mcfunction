#> asset:object/2057.lexiel_rod_fireball/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2057/kill

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s

execute if entity @s run say a
