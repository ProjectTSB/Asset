#> asset:mob/0419.astro_drowned/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/419/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 419
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"アストロドラウンド","color":"white"}]'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"宇宙で活動するドラウンド。","color":"white"}','{"text":"時空を切り裂いて攻撃をしてくる。","color":"white"}','{"text":"ゾンビも宇宙で溺死するとこうなるらしい。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:trident",Count:1b}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:glass",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14737632},Trim:{material:"minecraft:quartz",pattern:"minecraft:coast"},Unbreakable:1b}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14737632},Trim:{material:"minecraft:quartz",pattern:"minecraft:coast"},Unbreakable:1b}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14737632},Trim:{material:"minecraft:quartz",pattern:"minecraft:coast"},Unbreakable:1b}}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3500
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.3
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.2
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.2
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.6
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.6
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.6
# フィールド
    # data modify storage asset:mob Field.myValue set value
