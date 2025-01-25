#> asset:mob/0391.axia_first/ai/projectile/zangekihou/4.damage
#
# ダメージ判定
#
# @within function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start

# 判定内にいるプレイヤーをタグ付け
    execute positioned ^ ^ ^2 positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dy=3,dz=3] run tag @s add AV.Temp.Target
    execute positioned ^ ^ ^6 positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dy=3,dz=3] run tag @s add AV.Temp.Target
    execute positioned ^ ^ ^10 positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dy=3,dz=3] run tag @s add AV.Temp.Target
    execute positioned ^ ^ ^14 positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dy=3,dz=3] run tag @s add AV.Temp.Target
    execute positioned ^ ^ ^18 positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dy=3,dz=3] run tag @s add AV.Temp.Target
    execute positioned ^ ^ ^22 positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dy=3,dz=3] run tag @s add AV.Temp.Target

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 60.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放った斬撃砲によって、この世から消し飛ばされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # 補正functionを実行
        function api:damage/modifier
    # ダメージを与える
        execute as @a[tag=AV.Temp.Target,distance=..100] at @s run function api:damage/
    # リセット
        function api:damage/reset

# タグ外し
    tag @a[tag=AV.Temp.Target,distance=..100] remove AV.Temp.Target
