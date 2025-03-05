#> asset:artifact/0441.awaited_opportunity/trigger/message/
#
# メッセージを流す
#
# @within function asset:artifact/0441.awaited_opportunity/trigger/3.main

#> Private
# @private
    #declare score_holder $Random

# 効果音
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 0

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..18

    # debug
        # scoreboard players set $Random Temporary 11

    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"あんまチョーシくれてっとひき肉にしちまうよ！"}]
        execute if score $Random Temporary matches 1 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"おまえも････ うるさい蟲だ････"}]
        execute if score $Random Temporary matches 2 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"殺し合いだッ...！クソ野郎！！"}]
        execute if score $Random Temporary matches 3 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"フザけろよ････？ コラ････"}]
        execute if score $Random Temporary matches 4 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"まだ“疼き”は 止まらねーゾぉ･･？"}]
        execute if score $Random Temporary matches 5 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"カチ割ってやんゾ！？そのド頭ぁっ！！"}]
        execute if score $Random Temporary matches 6 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"てめーも海に沈めてやんよォ！！"}]
        execute if score $Random Temporary matches 7 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"ケンカの話の時間だ！コラァ！！"}]
        execute if score $Random Temporary matches 8 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"おぉ！上等だよ！てめーら上等だってんだよ！！"}]
        execute if score $Random Temporary matches 9 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"今夜で“オワリ”にしてやるよ！"}]
        execute if score $Random Temporary matches 10 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"冥府に送っちまえってよォ！！"}]
        execute if score $Random Temporary matches 11 as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"“事故”る奴は････“不運”と“踊”っちまったんだよ････"}]
        execute if score $Random Temporary matches 12 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"てめェの臓物ブチまけてやる････！！"}]
        execute if score $Random Temporary matches 13 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"俺が手に入れてやる･･･！その領域･･！“スピードの向こう側”を･･！！"}]
        execute if score $Random Temporary matches 14 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"疼くんだよゥ････"}]
        execute if score $Random Temporary matches 15 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"楽しーぜェ！？月が狂っちまってやがるぜェ！？てめーらよぅ！！"}]
        execute if score $Random Temporary matches 16 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"“ひき肉”だッ！！てめーらぁ！？"}]
        execute if score $Random Temporary matches 17 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"“全部”････潰してくれてやんからよぅ････"}]
        execute if score $Random Temporary matches 18 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"めんどくせーから全部殺すか？あ？"}]

    # プレイヤーが"不運"と"踊"っちまった時
        execute if score $Random Temporary matches 11 run function asset:artifact/0441.awaited_opportunity/trigger/message/hardluck

    # "不運"と"踊"ってないときは敵の位置にマガジンマーク召喚
        execute unless score $Random Temporary matches 11 at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] anchored eyes positioned ^1.0 ^ ^ run function asset:artifact/0441.awaited_opportunity/trigger/message/magazine_mark

    # スピードの向こう側
        execute if score $Random Temporary matches 13 run function asset:artifact/0441.awaited_opportunity/trigger/message/beyond_the_speed

    # リセット
        scoreboard players reset $Random Temporary
