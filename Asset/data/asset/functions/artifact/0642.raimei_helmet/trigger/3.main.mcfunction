#> asset:artifact/0642.raimei_helmet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0642.raimei_helmet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 2

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,642,6]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,1,642,6]
    data modify storage api: Argument.Amount set value 0.04
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

#セット効果用のファンクション実行（実行はチェストプレートの方へ）
    execute if data storage asset:context id.all{head:642,chest:643,legs:644,feet:645} run function asset:artifact/0643.raimei_chestplate/trigger/fullset/equip/
