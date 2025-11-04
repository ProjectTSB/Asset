#> asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/damage_area
#
# 範囲
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/

# 立方体範囲内のプレイヤーにtag付け
    data modify storage lib: args.dx set value 1
    data modify storage lib: args.dy set value 6.0
    data modify storage lib: args.dz set value 16.0
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..64]"
    execute positioned ^ ^2 ^16 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージを与える
    # データ設定
        data modify storage api: Argument.Damage set value 65.0f
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # tag付けされたプレイヤーにダメージを与える
        function api:damage/modifier
        execute as @a[tag=DXYZ,distance=..64] run function api:damage/

# リセット
    function api:damage/reset

# tagリセット
    tag @a[tag=DXYZ] remove DXYZ
