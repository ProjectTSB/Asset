#> asset:mob/0391.axia_first/ai/projectile/shock_wave/3.cast
#
# 爆発処理
#
# @within function asset:mob/0391.axia_first/ai/projectile/critical/2.tick

# 演出
    function asset:mob/0392.ecual_first/ai/projectile/critical/vfx/cast

# 引数の設定
    # 与えるダメージ
        # ノーマルなら 100f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 100f
        # ハードなら 9999f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 9999f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # 悪いがこれにあたったら死んでね☆
        execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.FixedDamage set value true
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%2$sの攻撃が200回転した！ %1$sは死んだ！","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[type=wither_skeleton,tag=this,distance=..100] run function lib:damage/modifier
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..8] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s
