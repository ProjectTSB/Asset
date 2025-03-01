#> asset:mob/0176.killer_bee/tick/damage
#
#
#
# @within function asset:mob/0176.killer_bee/tick/

# 演出
    playsound entity.bee.sting hostile @a ~ ~ ~ 1 1

# 攻撃のCT設定
    scoreboard players set @s 4W.AttackCT 20

# ダメージ
    data modify storage api: Argument.Damage set value 25
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# 自爆ダメージ
    data modify storage api: Argument.Damage set value 200
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
