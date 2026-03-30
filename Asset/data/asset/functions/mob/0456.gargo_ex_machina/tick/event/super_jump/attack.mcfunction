#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/attack
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_attack

# ヒット判定
    # 円範囲
        tag @a[tag=!PlayerShouldInvulnerable,distance=..15] add DXYZ

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SuperJump.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.SuperJump.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.SuperJump.Element
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの着地の衝撃で粉々になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 演出
    function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/attack_effect

# 終了
    tag @a[tag=DXYZ] remove DXYZ
