#> asset:artifact/0566.great_sage_helmet/kill/talk
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/kill/3.main

# 喋る
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 2 1.45

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.KillMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力(低好感度)
        execute if score $Random Temporary matches 0 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> よし！殺戮だー！"}
        execute if score $Random Temporary matches 1 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 血みどろだね！楽しんでる？"}
        execute if score $Random Temporary matches 2 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> まだ近くに残ってる奴がいるかも？"}
        execute if score $Random Temporary matches 3 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 最高だね！楽しい時間だ！"}
        execute if score $Random Temporary matches 4 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ひゅー！もっとだ！"}
        execute if score $Random Temporary matches 5 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> いいね！いい殺しっぷりだ！"}
        execute if score $Random Temporary matches 6 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> まだ油断しちゃダメだよ？"}
        execute if score $Random Temporary matches 7 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ふふふ、楽しいね！"}
        execute if score $Random Temporary matches 8 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> まだいける？"}
        execute if score $Random Temporary matches 9 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> いい感じだよ！その調子！"}
    # メッセージ出力(高好感度)
        execute if score $Random Temporary matches 0 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 私って役に立ってるよね？そうなら嬉しいな"}
        execute if score $Random Temporary matches 1 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> まだまだ楽しんでいこうよ！ずっと、楽しんでいたいな"}
        execute if score $Random Temporary matches 2 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 君とこうしてる時間が...一番好きだな"}
        execute if score $Random Temporary matches 3 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> また殺せた。もっと、もっとだよ..."}
        execute if score $Random Temporary matches 4 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> あはは！汚れちゃったかも！今度きれいに洗ってね！"}
        execute if score $Random Temporary matches 5 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> どんどん殺していこうよ！楽しいでしょ？"}
        execute if score $Random Temporary matches 6 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 楽しい。やっぱり楽しいよ。君が来てから、ずっと楽しいんだ"}
        execute if score $Random Temporary matches 7 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> いいよ、いい。もっとやろうよ！"}
        execute if score $Random Temporary matches 8 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> あーあ。もう殺しちゃったの？次にいこうか"}
        execute if score $Random Temporary matches 9 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 油断しないでね！まだ残ってるみたい！"}
# リセット
    scoreboard players reset $Random Temporary
