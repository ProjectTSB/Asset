#> asset:mob/0104.mad_scientist/register
# @within asset:mob/alias/104/register

# ID (int)
    data modify storage asset:mob ID set value 104
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"マッドサイエンティスト","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"異様な薬学に目覚めたスケルトン。","color":"white"}','{"text":"様々なポーションを投げて攻撃してくる。","color":"white"}','{"text":"そこそこワケアリなやつ。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"splash_potion",Count:1b}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"leather_helmet",Count:1b,tag:{Unbreakable:1b,display:{color:16777215}}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"leather_boots",Count:1b,tag:{display:{color:16777215}}}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1200
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value -7
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.25
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.875
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.3
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.7
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# フィールド
# ダメージの属性別設定
    data modify storage asset:mob Field.Damage set value {Fire:23.0f,Water:16.0f,Thunder:16.0f}

# 毒ポーションの設定
    data modify storage asset:mob Field.Poison set value {Duration:100,Stack:4}

# 鈍足の設定
    data modify storage asset:mob Field.Slowness set value {Duration:100,Stack:2}

# 基礎MP減少量設定
    data modify storage asset:mob Field.MPReduceVal set value -8
