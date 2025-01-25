#> asset:artifact/0383.i_scream_ice_cream/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/383/click/

    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# ランダムで変なこと言うやつ
    # 引数
        data modify storage lib: Args.key set value "383.Message"
        data modify storage lib: Args.max set value 40
        data modify storage lib: Args.scarcity_history_size set value 20
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" アイスで冷やす？ああ、いいっすね！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 1 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" アイススケートする？ああ、いいっすけど！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 2 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" アイスランド人が愛すランドセル！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 3 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" イカリングでカーリング！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 4 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷河がないんじゃ、ひょうが無い！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 5 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" サムは寒いと感じた！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 6 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷点下なのに、ヒョー、雨天か！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 7 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 防寒姿で傍観！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 8 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 効率良く氷強くする！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 9 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冷凍庫に入れと〜こ","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 10 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" コーラスフルーツをよう凍らす！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 11 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 寒波に完敗！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 12 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 雪が降ってて寒いでスノー！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 13 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" ナイスなアイス、なぁ、いいっすよね！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 14 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 寒気は回る、感極まる！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 15 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 愛する人とアイス食う！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 16 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" もう冬かい？なんて不愉快！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 17 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冷めているサメ！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 18 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 紅茶が凍っちゃった！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 19 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" サム言い寄る、寒い夜！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 20 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷集めて、あ～冷てぇ！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 21 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 場が凍り付く？氷作ってるからね！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 22 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冬の鯛は冷たい！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 23 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" ブリのブリザード！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 24 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 南極で何曲か聞く！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 25 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷の小売店！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 26 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冷たい理由を問い詰めたい！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 27 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 北風の時期に来た課税！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 28 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷河期のガキ！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 29 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 雪をもっておゆき！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 30 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冬眠する島民！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 31 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" コートを着とこーっと！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 32 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 冷てぇアイスを詰めてくれ！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 33 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷の降臨！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 34 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 雪の日にゆきたくない！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 35 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" スノー降る！Snow full！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 36 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷点下には雹添加！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 37 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 深雪見ゆ君！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 38 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" かまくらのふかふかまくら！","color":"aqua","bold":true}]
        execute if score $Random Temporary matches 39 run tellraw @a [{"text":"<","color":"aqua","bold":true},{"selector":"@s","bold":true},{"text":">","bold":true},{"text":" 氷菓を評価！","color":"aqua","bold":true}]

    # リセット
        scoreboard players reset $Random Temporary

# 演出
    playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1.1
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1
    particle minecraft:block blue_ice ~ ~3 ~ 4 4 4 10 1000
    particle minecraft:block ice ~ ~3 ~ 4 4 4 10 1000
    schedule function asset:artifact/0383.i_scream_ice_cream/click/3.1.message 2s append
    fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:frosted_ice replace minecraft:water[level=0]

# 移動速度低下付与
# 天使に対しては効果が落ちる
    effect give @e[type=#lib:living,type=!player,tag=!Enemy.Boss,tag=!Uninterferable,distance=..5] slowness 30 4
    effect give @e[type=#lib:living,type=!player,tag=Enemy.Boss,tag=!Uninterferable,distance=..5] slowness 4 1

# ダメージ
    # 与えるダメージ = 113
        data modify storage lib: Argument.Damage set value 42f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 範囲5m以内のエンティティを対象に
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5] run function lib:damage/
# リセット
    function lib:damage/reset
