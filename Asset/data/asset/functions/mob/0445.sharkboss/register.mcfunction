#> asset:mob/0445.sharkboss/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/445/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 445
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"てすと","color":"aqua"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value 
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 6000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.8f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.2f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド
    # data modify storage asset:mob Field.myValue set value 
     #フィールド
    # 技ごとの攻撃力設定
        data modify storage asset:mob Field.Damage set value {Bite:13.0f,Tail:6.0f,TailStrong:10.0f,ComboBite:15.0f,ComboTail:10.0f,Rush:10.0f,RushStrong:10.0f,WaterColumn:8.0f,WaterGun:8.0f,Pufferfish:13.0f,Spin:6,SharknadoSlash:8.0f,SharknadoMulti:2.0,Sharknado:20.0f}

#↓コピペしたよ
    # 毒ポーションの設定
        #data modify storage asset:mob Field.Poison set value {Duration:100,Stack:2}

    # 鈍足の設定
        #data modify storage asset:mob Field.Slowness set value {Duration:100,Stack:2}

    # 基礎MP減少量設定
        #data modify storage asset:mob Field.MPReduceVal set value -8
