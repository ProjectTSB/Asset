#> asset:effect/0256.the_great_sage_s_attire/fullset/equip
#
#
#
# @within function
#   asset:effect/0256.the_great_sage_s_attire/given/
#   asset:effect/0256.the_great_sage_s_attire/re-given/

# フルセット時喋る
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 2 1.45

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        data modify storage lib: Args.key set value "FQ.EquipMessage"
        data modify storage lib: Args.max set value 10
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @s {"text":"<Erysus> ハロー、私はエリュサス。君が着てるその服のことだよ。"}
        execute if score $Random Temporary matches 1 run tellraw @s {"text":"<Erysus> 防具が急に喋るなんてありえないよね？私は喋るけどね？"}
        execute if score $Random Temporary matches 2 run tellraw @s {"text":"<Erysus> 退屈させないでよ？"}
        execute if score $Random Temporary matches 3 run tellraw @s {"text":"<Erysus> 刺激的な冒険を始めようか！"}
        execute if score $Random Temporary matches 4 run tellraw @s {"text":"<Erysus> エリュサス、今は亡き賢者...私のことだよ"}
        execute if score $Random Temporary matches 5 run tellraw @s {"text":"<Erysus> いえーい！びっくりした？"}
        execute if score $Random Temporary matches 6 run tellraw @s {"text":"<Erysus> 喋る防具を見たことはある？私がそれだよ"}
        execute if score $Random Temporary matches 7 run tellraw @s {"text":"<Erysus> やっと起きれる時間？楽しませてよ？"}
        execute if score $Random Temporary matches 8 run tellraw @s {"text":"<Erysus> さあ、始めようか！"}
        execute if score $Random Temporary matches 9 run tellraw @s {"text":"<Erysus> 君なら楽しい時間を過ごせそうだよ"}

# リセット
    scoreboard players reset $Random Temporary
