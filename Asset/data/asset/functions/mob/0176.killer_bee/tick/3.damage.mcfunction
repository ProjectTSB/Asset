#> asset:mob/0176.killer_bee/tick/3.damage
#
#
#
# @within function asset:mob/0176.killer_bee/tick/

# 演出
    playsound entity.bee.sting hostile @a ~ ~ ~ 1 1

# 攻撃のCT設定
    scoreboard players set @s 4W.AttackCT 20

# ダメージ
    data modify storage lib: Argument.Damage set value 37
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
    function lib:damage/reset

# 自爆ダメージ
    data modify storage lib: Argument.Damage set value 103
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value true
    function lib:damage/
    function lib:damage/reset
