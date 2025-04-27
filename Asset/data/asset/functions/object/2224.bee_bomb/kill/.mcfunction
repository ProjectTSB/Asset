#> asset:object/2224.bee_bomb/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2224/kill

# 演出
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 1 0
    particle explosion ~ ~ ~ 1 1 1 0 5 normal @a
    particle large_smoke ~ ~ ~ 0 0 0 0.3 40 normal @a

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset
# 死ぬ
    kill @s
