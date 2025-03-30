#> asset:object/2159.haruclaire_ic_capricorn/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2159.haruclaire_ic_capricorn/tick/attack

# 一定期間で実行
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval Temporary

# 攻撃
    # ヒット判定
        tag @a remove DXYZ
        data modify storage lib: args.dx set value 5
        data modify storage lib: args.dy set value 3
        data modify storage lib: args.dz set value 4
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..30]"
        execute rotated 0 0 positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
        execute unless entity @a[tag=DXYZ] run return 0
    # ダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "Water"
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは はしるやぎに ひかれた","with":[{"selector":"@s"}]}]'
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=DXYZ,tag=!PlayerShouldInvulnerable] run function api:damage/
        function api:damage/reset
        tag @a remove DXYZ

# 終了
    scoreboard players reset $Interval Temporary
