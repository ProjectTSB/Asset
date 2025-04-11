#> asset:object/2244.lawless_breaker_slashshot/hit_entity/
#
#
#
# @within function asset:object/alias/2244/hit_entity

#> private
# @private
    #declare score_holder $UserID
    #declare tag 2244.Player

# 多重ヒット防止判定
    execute as @a[tag=DXYZ,distance=..16] run function asset:object/2244.lawless_breaker_slashshot/hit_entity/check_player/

# ダメージ値設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage

# ダメージの属性をセット
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

#オブジェクトに持たせた持ち主のUUIDを使って、補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual

# 多重ヒット防止判定部分でタグを付与した対象にダメージを与える
    execute as @a[tag=2244.TargetEntity,distance=..16] run function api:damage/

# リセット
    function api:damage/reset
    tag @p[tag=2244.Player,distance=..64] remove 2244.Player
    tag @a[tag=!PlayerShouldInvulnerable,distance=..16] remove 2244.TargetEntity
    tag @a[tag=DXYZ,distance=..16] remove DXYZ
