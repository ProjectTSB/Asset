#> asset:artifact/2001.staff_of_the_willless/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2001.staff_of_the_willless/trigger/1.trigger

#> Val
# @private
#declare score_holder $Progress

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 攻略度取得
    function api:global_vars/game_progress
    execute store result score $Progress Temporary run data get storage api: Return.Progress 100
# チェック
    execute unless score $Progress Temporary matches 99.. run tellraw @s {"text":"まだ全ての島の浄化が済んでいないようだ","color":"red"}
# タグ消す
    execute unless score $Progress Temporary matches 99.. run tag @s remove CanUsed
#　デバッグメッセージ
    #tellraw @a [{"text":"Progress: "},{"score":{"name":"$Progress","objective":"Temporary"}}]
# リセット
    scoreboard players reset $Progress Temporary

# 場所チェック
    #execute unless predicate world_manager:area/01.god_boundaries run tellraw @s[tag=CanUsed] {"text":"神殿で使わなければならない","color":"red"}
    execute positioned 3071 117 -512 unless entity @s[distance=..100] run tellraw @s[tag=CanUsed] {"text":"神殿で使わなければならない","color":"red"}
# くだらん要素
    execute if predicate world_manager:area/01-01.flora_temple run tellraw @s[tag=CanUsed] {"text":"...私にだけ捧げられても困る","color":"red"}
    execute if predicate world_manager:area/01-02.nyaptov_temple run tellraw @s[tag=CanUsed] {"text":"...(もっとふさわしい場所があるだろ？)","color":"red"}
    execute if predicate world_manager:area/01-03.rumor_temple run tellraw @s[tag=CanUsed] {"text":"ここじゃ...ないかな？","color":"red"}
    execute if predicate world_manager:area/01-04.urban_temple run tellraw @s[tag=CanUsed] {"text":"使うべきはここではないぞ","color":"red"}
    execute if predicate world_manager:area/01-05.wi-ki_temple run tellraw @s[tag=CanUsed] {"text":"悪いが、外で使ってくれ","color":"red"}
# タグ消す
    execute positioned 3071 117 -512 unless entity @s[distance=..100] run tag @s remove CanUsed
    #execute unless predicate world_manager:area/01.god_boundaries run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2001.staff_of_the_willless/trigger/3.main
