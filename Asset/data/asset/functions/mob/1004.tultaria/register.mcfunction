#> asset:mob/1004.tultaria/register
<<<<<<< HEAD
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1004/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value false
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
=======
# @within asset:mob/alias/1004/register

>>>>>>> master
# ID (int)
    data modify storage asset:mob ID set value 1004
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
<<<<<<< HEAD
    data modify storage asset:mob Name set value '{"text":"トゥルタリア","color":"#a33033"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"この世界に終焉をもたらさんとする存在。","color":"white"}']
# 体力 (double) (オプション)
    #data modify storage asset:mob Health set value 140000d
# デバッグ用体力
    data modify storage asset:mob Health set value 40000d
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0.0d
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.0d
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1.0d
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド
    data modify storage asset:mob Field.Element.List set value [Fire,Water,Thunder]
=======
    data modify storage asset:mob Name set value '{"text":"トゥルタリア"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Head set value
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 140000
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    # data modify storage asset:mob Speed set value
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.8
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0
>>>>>>> master
