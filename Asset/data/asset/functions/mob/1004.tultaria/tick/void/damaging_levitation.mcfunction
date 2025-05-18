#> asset:mob/1004.tultaria/tick/void/damaging_levitation
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
    execute store result storage api: Argument.Damage float 0.30 run data get storage api: Return.MaxHealth 1
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
# 補正functionを実行
    execute as @e[type=wither_skeleton,tag=this,distance=..128,sort=nearest,limit=1] run function api:damage/modifier
# 対象
    execute as @s[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset

# 慣性リセット
    tp @s 0 0 0
    tp @s ~ ~ ~ ~ ~

# 上に飛ばされる
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 20
    data modify storage api: Argument.Duration set value 8
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
