#> asset:artifact/1068.dream_of_burning_butterfly/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1068.dream_of_burning_butterfly/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1068
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 体力を10以上失っているかチェックする

# 最大体力と現在体力を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health

# (最大体力 - 現在体力) >= 10 か否かをチェックする
    execute store result score $LostHealth Temporary run scoreboard players operation $MaxHealth Temporary -= $Health Temporary
    execute unless score $LostHealth Temporary matches 10.. run tag @s remove CanUsed

# ログを埋め尽くさないように発動失敗のメッセージは無い

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1068.dream_of_burning_butterfly/trigger/3.main

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $Health Temporary
    scoreboard players reset $LostHealth Temporary