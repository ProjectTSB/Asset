#> asset:object/2104.lexiel_laser/tick/shot
#
#
#
# @within function asset:object/2104.lexiel_laser/tick/

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
    particle explosion ~ ~ ~ 0 0 0 0 1
    particle flash ~ ~ ~ 0 0 0 0 1
    particle wax_off ~ ~5 ~ 0.2 10 0.2 0 100

    data modify entity @s start_interpolation set value 0
    data modify entity @s transformation.scale set value [0.5f,20f,0.5f]

# ダメージ

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 20f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute positioned ~-1 ~-1 ~-1 as @a[tag=!PlayerShouldInvulnerable,dx=1,dy=10,dz=1] at @s run function api:damage/
# リセット
    function api:damage/reset
