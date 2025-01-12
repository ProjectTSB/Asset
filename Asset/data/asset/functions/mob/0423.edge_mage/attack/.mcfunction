#> asset:mob/0423.edge_mage/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/423/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 乱数を取る
    execute store result score @s Temporary run random value 0..2

# 共通の演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1 0.5

# 攻撃
# 3属性を扱う仕様のためダメージを想定より落としている
    # ダメージ量
        data modify storage lib: Argument.Damage set value 35.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性を設定したり演出変えたり
        execute if score @s Temporary matches 0 at @p[tag=Victim,distance=..8] run function asset:mob/0423.edge_mage/attack/fire
        execute if score @s Temporary matches 1 at @p[tag=Victim,distance=..8] run function asset:mob/0423.edge_mage/attack/water
        execute if score @s Temporary matches 2 at @p[tag=Victim,distance=..8] run function asset:mob/0423.edge_mage/attack/thunder
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージを与える
        execute as @p[tag=Victim,distance=..8] at @s run function lib:damage/
    # リセット
        function lib:damage/reset

# リセット
    scoreboard players reset @s Temporary
