#> asset:object/2051.lastboss_platform_attack_red/tick/damage
#
#
#
# @within function asset:object/2051.lastboss_platform_attack_red/tick/

# サウンド
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 0.5 1
    playsound tsb_sounds:blaster1 hostile @a ~ ~ ~ 0.5 1
    particle minecraft:dust_color_transition 0.5 0 0 2 0.5 0.5 0.5 ~ ~1 ~ 1 1 1 0 50 force @a[distance=..32]
    particle minecraft:explosion ~ ~1 ~ 1 1 1 1 3 force @a[distance=..32]

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 65.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute at @s positioned ~-2.5 ~-5 ~-2.5 as @p[tag=!PlayerShouldInvulnerable,dx=4,dy=10,dz=4] run function api:damage/
# リセット
    function api:damage/reset
