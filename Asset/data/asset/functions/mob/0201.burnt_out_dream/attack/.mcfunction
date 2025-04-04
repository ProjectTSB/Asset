#> asset:mob/0201.burnt_out_dream/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/201/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 腕振る
    item replace entity @s weapon.mainhand with stick{CustomModelData:20473}
# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.6
# ダメージを与える
# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 41
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim] run function api:damage/
# リセット
    function api:damage/reset
