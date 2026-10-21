#> asset:artifact/1646.laser_pointer/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1646.laser_pointer/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
# ロックオン済みの敵がいたらCDを無視して前方をチェック
    execute if entity @s[tag=1646.LockOn] anchored eyes positioned ^ ^ ^ run return run function asset:artifact/1646.laser_pointer/trigger/rec

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1646.laser_pointer/trigger/3.main
