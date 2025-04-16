#> asset:artifact/0001.book_of_all-seeing/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 下を見ている(75-90)なら自身のステータスを確認するためチェック必要なし
# そうでないなら敵を視界に捉えているかチェック
    execute if entity @s[tag=CanUsed] unless entity @s[x_rotation=75..90.0] anchored eyes positioned ^ ^ ^ run function asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity
    execute if entity @s[tag=CanUsed] unless entity @s[x_rotation=75..90.0] unless entity @e[type=#lib:living,tag=01.Target,distance=..30] run tellraw @s {"text":"対象を視界に捉えていません。","color":"red"}
    execute unless entity @s[x_rotation=75..90.0] unless entity @e[type=#lib:living,tag=01.Target,distance=..30] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0001.book_of_all-seeing/trigger/3.main
