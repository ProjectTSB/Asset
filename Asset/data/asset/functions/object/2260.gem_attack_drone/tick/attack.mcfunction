#> asset:object/2260.gem_attack_drone/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2260.gem_attack_drone/tick/event_attack

# 一定間隔で攻撃
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval Temporary
    scoreboard players reset $Interval Temporary

# ダメージ
    # ヒット判定
        data modify storage lib: args.dx set value 4
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 3
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute positioned ^ ^ ^3 run function lib:rotatable_dxyz/m with storage lib: args
    # 攻撃
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
        data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
        data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=DXYZ] run function api:damage/
        function api:damage/reset
        tag @a remove DXYZ
