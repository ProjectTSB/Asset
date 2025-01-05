#> asset:mob/1004.tultaria/tick/void/damage
#
# 奈落落下時のダメージや演出
#
# @within function asset:mob/1004.tultaria/tick/void/fall

# 演出
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1 1
    playsound minecraft:entity.wither.ambient neutral @a ~ ~ ~ 1 1.5
    particle dust 0.718 0.188 0.188 2 ~ ~1 ~ 0.3 0.5 0.3 0 50

# 割合ダメージ
    function api:modifier/max_health/get
    execute store result storage lib: Argument.Damage float 0.02 run data get storage api: Return.MaxHealth 10
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @s[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset
