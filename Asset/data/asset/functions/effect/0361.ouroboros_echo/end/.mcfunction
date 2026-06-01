#> asset:effect/0361.ouroboros_echo/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0361.ouroboros_echo/_/end

# 自身に4の防御貫通ダメージを与える
    # ダメージ量
        data modify storage api: Argument.Damage set value 4.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage api: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは蛇の輪廻に飲み込まれた","with":[{"selector":"@s"}]}]']
    # ダメージ
        function api:damage/modifier
        execute as @s[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset
