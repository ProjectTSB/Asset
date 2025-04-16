#> asset:object/2242.lawless_chaser_shot/tick/explode
#
# 爆発する
#
# @within function asset:object/2242.lawless_chaser_shot/tick/

# 演出
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1.5
    particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 3 force @a[distance=..32]
    particle lava ~ ~ ~ 0.2 0.2 0.2 1 5 force @a[distance=..32]

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute at @s as @p[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset

# 消失
    kill @s
