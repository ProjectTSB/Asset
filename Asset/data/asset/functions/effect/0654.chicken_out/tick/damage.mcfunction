#> asset:effect/0654.chicken_out/tick/damage
#
# 風のダメージだ！
#
# @within function asset:effect/0654.chicken_out/tick/interval

# 引数の設定
    # 与えるダメージは自身のHPの20%
        function api:modifier/max_health/get
        execute store result storage api: Argument.Damage double 0.2 run data get storage api: Return.MaxHealth
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
    # 死亡メッセージ
        data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは臆病風に吹かれて、どこかに飛んでいってしまった","with":[{"selector":"@s"}]}]']
    # 属性耐性・防御力/防具強度・耐性エフェクトを無視するか否か
        data modify storage api: Argument.FixedDamage set value true
# ダメージ補正
    function api:damage/modifier
# ダメージを与える。
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset

# パーティクル
    particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:dust_plume ~ ~1 ~ 0.2 0.2 0.2 0.1 50 force @a[distance=..32]

# サウンド
    playsound ogg:mob.breeze.wind_burst2 hostile @s ~ ~ ~ 2 1.5
