#> asset:artifact/1614.wooden_snake_branch/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1614.wooden_snake_branch/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1614
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#射程内の視線が合っている敵にのみスコアを付与
    execute if entity @s[gamemode=!spectator,tag=CanUsed,tag=!Death] anchored eyes positioned ^ ^ ^ run function asset:artifact/1614.wooden_snake_branch/trigger/check_line_of_sight/

#スコアが40以上の敵がいなければCanUsedタグを削除
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,scores={18U.StareTime=40..},distance=..8] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1614.wooden_snake_branch/trigger/3.main
