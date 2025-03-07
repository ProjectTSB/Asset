#> asset:artifact/0003.humanity/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0003.humanity/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 猫の場合死ぬ
# 現状だとCTがないので特に条件を考えずに実装している
    execute if predicate player_manager:is_believe/nyaptov run function asset:artifact/0003.humanity/trigger/nyaptov

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0003.humanity/trigger/3.main
