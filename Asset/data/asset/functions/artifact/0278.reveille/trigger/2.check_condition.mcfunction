#> asset:artifact/0278.reveille/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0278.reveille/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# オーバーワールドでなければCanUsedを削除
    execute if entity @s[tag=CanUsed] unless predicate lib:dimension/is_overworld run function lib:message/artifact/can_not_use_here
    execute unless predicate lib:dimension/is_overworld run tag @s remove CanUsed

# 昼ならCanUsedを削除する
    execute if entity @s[tag=CanUsed] if predicate lib:is_day run tellraw @s {"text":"発動条件を満たしていません。","color":"red"}
    execute if predicate lib:is_day run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0278.reveille/trigger/3.main
