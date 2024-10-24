#> asset:mob/0202.hunters_dream/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/202/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail



# 腕振る
    item replace entity @s weapon.mainhand with iron_sword
# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.6
# ダメージを与える
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset
