#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 夜かどうかをチェックする
    execute unless predicate lib:is_night run tag @s remove CanUsed
    execute unless predicate lib:is_night run function lib:message/artifact/condition_not_met

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/3.main
