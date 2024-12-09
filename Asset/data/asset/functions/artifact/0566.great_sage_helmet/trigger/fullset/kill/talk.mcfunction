#> asset:artifact/0566.great_sage_helmet/trigger/fullset/kill/talk
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/trigger/fullset/kill/

# 喋る
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 2 1.45

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.KillMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @s {"text":"<Erysus> よし！殺戮だー！"}
        execute if score $Random Temporary matches 1 run tellraw @s {"text":"<Erysus> 血みどろだね！楽しんでる？"}
        execute if score $Random Temporary matches 2 run tellraw @s {"text":"<Erysus> まだ近くに残ってる奴がいるかも？"}
        execute if score $Random Temporary matches 3 run tellraw @s {"text":"<Erysus> 最高だね！楽しい時間だ！"}
        execute if score $Random Temporary matches 4 run tellraw @s {"text":"<Erysus> ひゅー！もっとだ！"}
        execute if score $Random Temporary matches 5 run tellraw @s {"text":"<Erysus> いいね！いい殺しっぷりだ！"}
        execute if score $Random Temporary matches 6 run tellraw @s {"text":"<Erysus> まだ油断しちゃダメだよ？"}
        execute if score $Random Temporary matches 7 run tellraw @s {"text":"<Erysus> ふふふ、楽しいね！"}
        execute if score $Random Temporary matches 8 run tellraw @s {"text":"<Erysus> まだいける？"}
        execute if score $Random Temporary matches 9 run tellraw @s {"text":"<Erysus> いい感じだよ！その調子！"}

# リセット
    scoreboard players reset $Random Temporary
