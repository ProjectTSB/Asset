#> asset:mob/0341.louvert/tick/projectile/meteor/3.cast
#
# メテオ 発火
#
# @within function asset:mob/0341.louvert/tick/projectile/meteor/1.tick

# 演出
    function asset:mob/0341.louvert/tick/projectile/meteor/3.1.cast_vfx

# 引数の設定
    # 与えるダメージ
        # ノーマルなら 28f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 28.0f
        # ハードなら 36f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 36.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのメテオによって灰にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[tag=9H.Temp.This,distance=..100] run function lib:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s
    kill @e[type=item_display,tag=9H.Meteor.Display,distance=..0.001,limit=1]