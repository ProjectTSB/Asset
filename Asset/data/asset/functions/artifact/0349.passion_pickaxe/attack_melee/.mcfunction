#> asset:artifact/0349.passion_pickaxe/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/349/attack_melee/

# ダメージ
    # 与えるダメージ = 550
        data modify storage lib: Argument.Damage set value 50f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 炎属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value false
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset

# 自身にエフェクト付与
    effect give @s minecraft:haste 60 3 true

# 演出
    particle minecraft:lava ~ ~ ~ 0.5 1 0.5 1 100 force @a[distance=..20]
    playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 1 0.7
