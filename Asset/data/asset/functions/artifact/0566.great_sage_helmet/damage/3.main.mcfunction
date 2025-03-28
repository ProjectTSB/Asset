#> asset:artifact/0566.great_sage_helmet/damage/3.main
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/damage/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 喋る
    playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 0.4 1.6

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.DamageMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力(低好感度)
        execute if score $Random Temporary matches 0 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 大丈夫？！逃げたほうがいいよ！"}
        execute if score $Random Temporary matches 1 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 死にかけだよ！"}
        execute if score $Random Temporary matches 2 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> そろそろまずいかもしれないよ"}
        execute if score $Random Temporary matches 3 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 体力に気をつけて！"}
        execute if score $Random Temporary matches 4 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> これ以上の損傷はまずいかも..."}
        execute if score $Random Temporary matches 5 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 頑張って、生きる希望はまだあるから！"}
        execute if score $Random Temporary matches 6 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 回復は？！"}
        execute if score $Random Temporary matches 7 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 一旦引いたほうがいいんじゃない？"}
        execute if score $Random Temporary matches 8 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 言っとくけど自動回復みたいなことできないからね？"}
        execute if score $Random Temporary matches 9 unless score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 体力が低いね...死なないといいんだけど"}
    # メッセージ出力(高好感度)
        execute if score $Random Temporary matches 0 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> ...死なないでよ"}
        execute if score $Random Temporary matches 1 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 君と一緒なら死んでも怖くないけどさぁ...やめてよ？"}
        execute if score $Random Temporary matches 2 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 早いうちに対処してよ。私にはどうにもできないけどね"}
        execute if score $Random Temporary matches 3 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 安心して、私と一緒ならどうにでもなるでしょ？回復は除くものとしてさ"}
        execute if score $Random Temporary matches 4 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 私のこと死に装束にするつもり？！"}
        execute if score $Random Temporary matches 5 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 激しいのが好きなの？今度試してみる？"}
        execute if score $Random Temporary matches 6 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 痛いよー...君と一緒なら耐えられるけどね"}
        execute if score $Random Temporary matches 7 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> あはは、痛い。痛いね！"}
        execute if score $Random Temporary matches 8 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> 随分と自分に自信があるね。その体力で耐えられると思ってるんでしょ？"}
        execute if score $Random Temporary matches 9 if score @s FQ.Favorability matches 10.. run tellraw @s {"text":"<Erysus> カッコいいこと言いたかったけど思いつかないや。頑張ってね"}

# リセット
    scoreboard players reset $Random Temporary
