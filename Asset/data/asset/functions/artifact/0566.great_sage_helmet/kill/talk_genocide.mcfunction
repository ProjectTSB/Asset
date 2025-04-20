#> asset:artifact/0566.great_sage_helmet/kill/talk_genocide
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/kill/3.main

# 喋る
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 2 1.45

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.GenocideMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力(低好感度)
        execute if score $Random Temporary matches 0 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 殲滅完了！残党はいないかもね！"}
        execute if score $Random Temporary matches 1 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> これで最後？"}
        execute if score $Random Temporary matches 2 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ひゃっはー！！終わりー！！"}
        execute if score $Random Temporary matches 3 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 周囲に敵影なし...でも油断はしないで？"}
        execute if score $Random Temporary matches 4 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> もっと楽しみたかったね？"}
        execute if score $Random Temporary matches 5 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> *しかし だれもこなかった...なんちゃって"}
        execute if score $Random Temporary matches 6 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ちょっとだけ休憩しよ？"}
        execute if score $Random Temporary matches 7 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> さーって、誰もいなくなったね？"}
        execute if score $Random Temporary matches 8 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> もう終わり？楽しかったね"}
        execute if score $Random Temporary matches 9 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> そして誰もいなくなった...ふふふ"}
    # メッセージ出力(高好感度)
        execute if score $Random Temporary matches 0 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 終わっちゃった？そっか。少しさみしいな"}
        execute if score $Random Temporary matches 1 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 殲滅完了。ご褒美に抱きしめてあげよっか？"}
        execute if score $Random Temporary matches 2 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> お疲れ。近くに敵はいないよ。"}
        execute if score $Random Temporary matches 3 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 周囲に敵影なし！これで二人っきりだね..."}
        execute if score $Random Temporary matches 4 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 制圧完了！流石だね！"}
        execute if score $Random Temporary matches 5 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> *LOVEが  あがった。...あはは！私のだよ"}
        execute if score $Random Temporary matches 6 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ちょっと休もうよ。あんまり急がないでもいいでしょ？"}
        execute if score $Random Temporary matches 7 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> あーあ。楽しい時間が終わっちゃった。次があるって約束してよ"}
        execute if score $Random Temporary matches 8 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ...君と二人ならどんな状況でも生き残れる気がするよ"}
        execute if score $Random Temporary matches 9 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 小さな兵隊さんが二人...焼かれるのは愛にしとこっか？"}
# リセット
    scoreboard players reset $Random Temporary
