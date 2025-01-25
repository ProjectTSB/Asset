#> asset:artifact/0645.raimei_boots/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/645/equip/


# 演出
    playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 2

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,645,3]
    # 補正値
        data modify storage api: Argument.Amount set value 0.03
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:modifier/defense/thunder/add

# 雷バフするやつだと思う
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,645,3]
    # 補正値
        data modify storage api: Argument.Amount set value 0.04
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
    # 補正の追加
        function api:modifier/attack/thunder/add

#セット効果用のファンクション実行（実行はチェストプレートの方へ）
    execute if data storage asset:context id.all{head:642,chest:643,legs:644,feet:645} run function asset:artifact/0643.raimei_chestplate/equip/3.1.armorfullset
