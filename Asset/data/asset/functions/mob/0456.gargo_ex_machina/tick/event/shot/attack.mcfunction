#> asset:mob/0456.gargo_ex_machina/tick/event/shot/attack
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/shot/

# ヒット判定
    # 円範囲
        tag @a[tag=!PlayerShouldInvulnerable,distance=..7.5] add DXYZ

# ダメージ
    # 円範囲
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Shot.Amount
        data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Shot.Type
        data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Shot.Element
        function api:damage/modifier
        execute as @a[tag=DXYZ] run function api:damage/
        function api:damage/reset
    # 広がるドーナツ範囲
        data modify storage api: Argument.ID set value 2267
        data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Shot
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
        execute positioned ~ ~-0.3 ~ run function api:object/summon

# 演出
    function asset:mob/0456.gargo_ex_machina/tick/event/shot/attack_effect

# 終了
    tag @a[tag=DXYZ] remove DXYZ
