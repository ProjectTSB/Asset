#> asset:artifact/0441.awaited_opportunity/attack_melee/3.2.hardluck
#
# ダンスる
#
# @within function asset:artifact/0441.awaited_opportunity/attack_melee/3.1.message

# プレイヤーが"不運"と"踊"っちまった時
    tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"があああああッ･･！！"}]
    effect give @s unluck 30 1

# ダメージを受ける
    # 与えるダメージ = 3.5
        data modify storage api: Argument.Damage set value 3.5f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
# 補正function
    function api:damage/modifier
# 対象は自分
    function api:damage/
# リセット
    function api:damage/reset
