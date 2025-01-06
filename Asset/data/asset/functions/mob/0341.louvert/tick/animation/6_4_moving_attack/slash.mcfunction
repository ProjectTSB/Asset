#> asset:mob/0341.louvert/tick/animation/6_4_moving_attack/slash
#
# 回転斬り
#
# @within function asset:mob/0341.louvert/tick/animation/6_4_moving_attack/

# 演出
    # マーカーを呼ぶ
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 演出のためにランダムな方向を向かせる
        execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/
        execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at 0-0-0-0-0 positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/6_4_moving_attack/slash_vfx
    # Makerを戻してあげる
        execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# ダメージ
    # 引数の設定
    # 与えるダメージ
        # ノーマルなら 24f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 24.0f
        # ハードなら 36f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 36.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって無惨に切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] at @s run function lib:damage/
# リセット
    function lib:damage/reset
