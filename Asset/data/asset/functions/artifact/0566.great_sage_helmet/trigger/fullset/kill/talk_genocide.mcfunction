#> asset:artifact/0566.great_sage_helmet/trigger/fullset/kill/talk_genocide
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/trigger/fullset/kill/

# 喋る
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 2 1.45

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.GenocideMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @s {"text":"<Erysus> 殲滅完了！残党はいないかもね！"}
        execute if score $Random Temporary matches 1 run tellraw @s {"text":"<Erysus> これで最後？"}
        execute if score $Random Temporary matches 2 run tellraw @s {"text":"<Erysus> ひゃっはー！！終わりー！！"}
        execute if score $Random Temporary matches 3 run tellraw @s {"text":"<Erysus> 周囲に敵影なし...でも油断はしないで？"}
        execute if score $Random Temporary matches 4 run tellraw @s {"text":"<Erysus> もっと楽しみたかったね？"}
        execute if score $Random Temporary matches 5 run tellraw @s {"text":"<Erysus> *しかし だれもこなかった...なんちゃって"}
        execute if score $Random Temporary matches 6 run tellraw @s {"text":"<Erysus> ちょっとだけ休憩しよ？"}
        execute if score $Random Temporary matches 7 run tellraw @s {"text":"<Erysus> さーって、誰もいなくなったね？"}
        execute if score $Random Temporary matches 8 run tellraw @s {"text":"<Erysus> もう終わり？楽しかったね"}
        execute if score $Random Temporary matches 9 run tellraw @s {"text":"<Erysus> そして誰もいなくなった...ふふふ"}

# リセット
    scoreboard players reset $Random Temporary
