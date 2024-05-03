#> asset:artifact/0606.traffic_sign/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0606.traffic_sign/trigger/1.trigger

# 先にLatestUseTickを取っておく
    execute store result score $GU.LatestUseTick Temporary run data get storage asset:context Items.mainhand.tag.TSB.LatestUseTick

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0606.traffic_sign/trigger/3.main

# リセット
    scoreboard players reset $GU.LatestUseTick Temporary