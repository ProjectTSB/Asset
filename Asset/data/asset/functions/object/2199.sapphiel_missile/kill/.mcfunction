#> asset:object/2199.sapphiel_missile/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2199/kill

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.7
    particle explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0 4
    particle lava ~ ~ ~ 1 1 1 0 20
    particle cloud ~ ~1 ~ 0 0 0 0.25 100
    particle large_smoke ~ ~1 ~ 0 0 0 0.1 100

# 終了
    kill @s
