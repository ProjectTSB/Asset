#> asset:mob/0372.tutankhamen/tick/skill/laser/shoot/summon
#
# オブジェクト召喚部分
#
# @within function asset:mob/0372.tutankhamen/tick/skill/laser/shoot/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,30f,0.25f],Color:65535,DisappearInterpolation:2,LifeTime:10}
    function api:object/summon

# パーティクル
    particle dust 0 1 1 1 ~ ~ ~ 0.1 0.1 0.1 1 10
    particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 1

# 立方体範囲内のプレイヤーにtag付け
    data modify storage lib: args.dx set value 0.5
    data modify storage lib: args.dy set value 1.5
    data modify storage lib: args.dz set value 15.0
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..64]"
    execute positioned ^ ^-1 ^15 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージを与える
    # データ設定
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Laser
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "None"
    # tag付けされたプレイヤーにダメージを与える
        function api:damage/modifier
        execute as @a[tag=DXYZ,distance=..64] run function api:damage/

# リセット
    function api:damage/reset

# tagリセット
    tag @a[tag=DXYZ,distance=..64] remove DXYZ
