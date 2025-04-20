#> asset:effect/0256.the_great_sage_s_attire/fullset/dis_equip
#
#
#
# @within function
#   asset:effect/0256.the_great_sage_s_attire/re-given/
#   asset:effect/0256.the_great_sage_s_attire/remove/

# 喋る
    playsound minecraft:entity.allay.item_thrown player @a ~ ~ ~ 1 1.4

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.DisEquipMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @s[tag=!Death] {"text":"<Erysus> うるさくて嫌になっちゃった？"}
        execute if score $Random Temporary matches 1 run tellraw @s[tag=!Death] {"text":"<Erysus> ばいばい、また会おうね"}
        execute if score $Random Temporary matches 2 run tellraw @s[tag=!Death] {"text":"<Erysus> しばらくのお別れだね"}
        execute if score $Random Temporary matches 3 run tellraw @s[tag=!Death] {"text":"<Erysus> まあそこそこ楽しい時間だったね"}
        execute if score $Random Temporary matches 4 run tellraw @s[tag=!Death] {"text":"<Erysus> 浮気でもする気？"}
        execute if score $Random Temporary matches 5 run tellraw @s[tag=!Death] {"text":"<Erysus> もっと遊びたかったな"}
        execute if score $Random Temporary matches 6 run tellraw @s[tag=!Death] {"text":"<Erysus> また使ってくれるよね？"}
        execute if score $Random Temporary matches 7 run tellraw @s[tag=!Death] {"text":"<Erysus> 私のこと嫌いにならないよね？"}
        execute if score $Random Temporary matches 8 run tellraw @s[tag=!Death] {"text":"<Erysus> そう...しばらく寂しくなっちゃうな"}
        execute if score $Random Temporary matches 9 run tellraw @s[tag=!Death] {"text":"<Erysus> またね、いつか絶対使ってよね？"}

# 好感度・時間の修正
    scoreboard players remove @s FQ.Favorability 1
    scoreboard players operation @s FQ.Favorability < $0 Const
    scoreboard players reset @s FQ.TalkTime

# リセット
    scoreboard players reset $Random Temporary
