#> asset:mob/0046.clock_of_despair/register
# @within asset:mob/alias/46/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends

# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false

# ID (int)
    data modify storage asset:mob ID set value 46
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"絶望の時計"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"朽ちることも、壊れることもなく時を刻む時計。","color":"white"}','{"text":"その性質上、普通の方法では倒すことはできない。","color":"white"}','{"text":"『時』が来るまで耐え続けるしかない。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20020}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1000000
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 30
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    data modify storage asset:mob SpecialDefense set value 30
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0

# フィールド

# 雷ダメージ
    data modify storage asset:mob Field.Damage.Thunder set value 75f

# 炎ダメージ
    data modify storage asset:mob Field.Damage.Fire set value 70f

# 時計レーザー
    data modify storage asset:mob Field.Damage.WallLaserClock set value 75f

# 魔炎
    data modify storage asset:mob Field.Damage.FallingFire set value 21f
