#> asset:artifact/1118.time_samsara/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1118.time_samsara/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/head
# 他にアイテム等確認する場合はここに書く

# 発動範囲内に敵がいない時は発動しない。これはプレイヤーが意識する必要がないため発動条件として書かない。
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1118.time_samsara/trigger/3.main
