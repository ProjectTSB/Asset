#> asset:mob/0186.ferocious_bee/tick/3.damage
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/

# 演出
    playsound entity.bee.sting hostile @a ~ ~ ~ 1 1

# 攻撃のCT設定
    scoreboard players set @s 56.AttackCT 20

# ダメージ
    data modify storage lib: Argument.Damage set value 11.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
    function lib:damage/reset
