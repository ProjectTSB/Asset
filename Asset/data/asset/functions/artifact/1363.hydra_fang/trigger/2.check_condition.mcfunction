#> asset:artifact/1363.hydra_fang/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1363.hydra_fang/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1363
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# IsDoT:trueでないならCanUsedを削除
    execute if entity @s[tag=CanUsed] unless data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed

# Attack.Toの回数だけ確率の判定を行う
# 実装現在、DoTで範囲ダメージの神器は存在しないが、今後実装される可能性も0ではないので念のためこうする
    execute if entity @s[tag=CanUsed] store result score $AttackCount Temporary if data storage asset:context Attack.To[]
    execute if entity @s[tag=CanUsed] run function asset:artifact/1363.hydra_fang/trigger/2.check_condition/check_recursive

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1363.hydra_fang/trigger/3.main

# リセット
    scoreboard players reset $AttackCount Temporary
