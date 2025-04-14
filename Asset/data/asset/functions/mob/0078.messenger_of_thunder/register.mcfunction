#> asset:mob/0078.messenger_of_thunder/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/78/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends

# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value true
# ID (int)
    data modify storage asset:mob ID set value 78
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"雷鳴之使","color":"#D9B111"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:1061,Enchantments:[{id:"punch",lvl:1s}]}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:376}}
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Trim:{material:"minecraft:iron",pattern:"tsb_armor:642"}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:chainmail_leggings",Count:1b,tag:{Trim:{material:"minecraft:iron",pattern:"tsb_armor:642"}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:chainmail_boots",Count:1b,tag:{Trim:{material:"minecraft:iron",pattern:"tsb_armor:642"}}}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 55000
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value -5
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.4
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 64
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.875
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.2
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.7

# フィールド
# 各スキルのダメージ設定
    data modify storage asset:mob Field.Damage.Vanilla set value {Normal:18.0f,HPLess50Per:25.0f}
    data modify storage asset:mob Field.Damage.Thunder set value 20.0f
    data modify storage asset:mob Field.Damage.Return set value {Normal:20.0f,Hard:25.0}
    data modify storage asset:mob Field.Damage.Curtain set value {Normal:15.0f,Hard:18.0f}
    data modify storage asset:mob Field.Damage.Cross set value 22.0f
