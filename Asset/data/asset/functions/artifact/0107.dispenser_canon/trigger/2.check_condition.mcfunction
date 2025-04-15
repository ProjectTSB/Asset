#> asset:artifact/0107.dispenser_canon/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0107.dispenser_canon/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 破壊可能エリアでのみ使用可能
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0107.dispenser_canon/trigger/3.main
