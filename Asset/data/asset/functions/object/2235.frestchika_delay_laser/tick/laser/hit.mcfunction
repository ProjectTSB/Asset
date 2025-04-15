#> asset:object/2235.frestchika_delay_laser/tick/laser/hit
#
#
#
# @within function asset:object/2235.frestchika_delay_laser/tick/laser/recursive

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10
    playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 1 2

# ダメージ数値設置
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset
