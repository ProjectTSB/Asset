#> asset:artifact/0566.great_sage_helmet/heal/3.main
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/heal/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 喋る
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 2 1.45

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.HealMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力(低好感度)
        execute if score $Random Temporary matches 0 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ああ...悦楽だよ..."}
        execute if score $Random Temporary matches 1 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 腕はくっついた？"}
        execute if score $Random Temporary matches 2 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 内蔵が掻き回される感覚、私は好きだな"}
        execute if score $Random Temporary matches 3 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ちょっと、服巻き込んで治さないでよ"}
        execute if score $Random Temporary matches 4 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> そんなに寿命を減らしてまで治したい？...冗談だよ"}
        execute if score $Random Temporary matches 5 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 死体に回復ってしたことある？面白いよ"}
        execute if score $Random Temporary matches 6 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> むず痒いよね、これ"}
        execute if score $Random Temporary matches 7 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 私のことも癒やしてよ。私はもう治らないけどね"}
        execute if score $Random Temporary matches 8 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> あーあ。私も回復とか使いたいよ"}
        execute if score $Random Temporary matches 9 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> スティムパックを注射...なーんちゃって"}
    # メッセージ出力(高好感度)
        execute if score $Random Temporary matches 0 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> もっと、もっと気持ちよくしてよ"}
        execute if score $Random Temporary matches 1 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 痛みが和らぐたび、たまにつらい気持ちにもなるんだ...変かな？"}
        execute if score $Random Temporary matches 2 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 君には死んでほしくないよ"}
        execute if score $Random Temporary matches 3 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 命って生きてる間しか救えないからね！"}
        execute if score $Random Temporary matches 4 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 傷跡すら残らないのは、ちょっとさみしいな"}
        execute if score $Random Temporary matches 5 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 胸の痛みってのは治らないね。抱きしめてくれなきゃ"}
        execute if score $Random Temporary matches 6 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 君が傷ついてるのは私のせいじゃないよね...そうといってよ"}
        execute if score $Random Temporary matches 7 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 私だって治したいんだよ。私だって..."}
        execute if score $Random Temporary matches 8 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 心の痛みを和らげる方法を試してみる？"}
        execute if score $Random Temporary matches 9 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> まだ痛むなら言ってよ。話し相手にはなれるよ。それ以上は求めないで..."}

# リセット
    scoreboard players reset $Random Temporary
