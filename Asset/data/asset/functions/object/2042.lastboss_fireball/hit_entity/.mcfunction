#> asset:object/2042.lastboss_fireball/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2042/hit_entity

# 演出
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 2
    particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 10 force @a[distance=..32]
    particle lava ~ ~ ~ 0.2 0.2 0.2 1 5 force @a[distance=..32]

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute at @s positioned ~-1 ~-1 ~-1 as @p[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] run function api:damage/
# リセット
    function api:damage/reset

# 消失
    function asset:object/call.m {method:kill}
