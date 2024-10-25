#> asset:object/2053.lastboss_light_pillar_spin/tick/damage
#
#
#
# @within function asset:object/2053.lastboss_light_pillar_spin/tick/

# 引数の設定
    # 与えるダメージ、待機時と開放時でダメージが違う
        execute if entity @s[tag=!2053.Release] run data modify storage lib: Argument.Damage set value 5.0f
        execute if entity @s[tag=2053.Release] run data modify storage lib: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/

# リセット
    function lib:damage/reset
