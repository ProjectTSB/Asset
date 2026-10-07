#> asset:mob/0464.drain_plant/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/464/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 464
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ドレイン・プラント","color":"#df523f"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"赤く分厚い花弁をした花の魔物。"}','{"text":"根も葉も持っておらず、他の生物からマナを吸わないと生きられないため、"}','{"text":"毒の花粉をばら撒き、その亡骸からマナを奪う。"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20625}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 300
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.75d
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.4d
    # 火倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Fire set value
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.8d
    # 雷倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Thunder set value
# フィールド

# ダメージ
    data modify storage asset:mob Field.Damage set value 5d

# MP吸収量
    # 基礎値
        data modify storage asset:mob Field.MPReduce.Base set value 10
    # 難易度比例部分
        data modify storage asset:mob Field.MPReduce.Difficulty set value 5

# 毒
    # スタック
        # 基礎値
            data modify storage asset:mob Field.Stack.Base set value 2
        # 難易度比例部分
            data modify storage asset:mob Field.Stack.Difficulty set value 1
    # 効果時間
        # 基礎値
            data modify storage asset:mob Field.Duration.Base set value 40
        # 難易度比例部分
            data modify storage asset:mob Field.Duration.Difficulty set value 80

# Killerに対してのMP回復
    data modify storage asset:mob Field.MPHealToKiller set value 30

# 攻撃モード
    data modify storage asset:mob Field.IsAttackMode set value false

# 落下状態
    data modify storage asset:mob Field.IsFalling set value false
    data modify storage asset:mob Field.DisableFalling set value false

# Metadata
    data modify storage asset:mob Field.Metadata set value "464.DrainPlant"
