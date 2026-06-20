#> asset:artifact/1465.versatile_plasma/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1465.versatile_plasma/trigger/1.trigger

# チャージ段階のEffect取得
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/get/from_id
# チャージが完了しているならキャンセル
    execute if data storage api: Return.Effect{Stack:3} run return 0
# チャージ中ならば強制的にチャージ続行
    execute if data storage api: Return.Effect run return run function asset:artifact/1465.versatile_plasma/trigger/charge

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1465.versatile_plasma/trigger/3.main
