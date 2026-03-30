#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_shot
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_attack

# ヒット判定
    # ドーナツ範囲
        tag @a[tag=DXYZ] remove DXYZ
        tag @a[tag=!PlayerShouldInvulnerable,distance=..80] add DXYZ
        tag @a[tag=DXYZ,distance=..18] remove DXYZ

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Shot.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Shot.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Shot.Element
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのビームで消し炭になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=DXYZ] remove DXYZ
