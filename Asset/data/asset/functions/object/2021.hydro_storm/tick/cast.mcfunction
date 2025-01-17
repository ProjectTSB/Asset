#> asset:object/2021.hydro_storm/tick/cast
#
# ダメージ処理
#
# @within function asset:object/2021.hydro_storm/tick/

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが巻き起こしたハイドロストームに溺れてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,dx=2,dy=2,dz=2] at @s run function api:damage/
# リセット
    function api:damage/reset
