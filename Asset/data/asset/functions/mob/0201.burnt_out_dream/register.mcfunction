#> asset:mob/0201.burnt_out_dream/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/201/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 202
    function asset:mob/extends

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 201
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"燃え尽きた夢","color":"dark_red"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"右手に剣、左手にクロスボウを持った狩人。","color":"white"}','{"text":"すべて、長い夜の夢だったよ。","color":"white"}']
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20473}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"crossbow",Count:1b}
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20472}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3145728}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3145728}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3145728}}}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
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
        data modify storage asset:mob Resist.Physical set value 0.9
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.8
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.4
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# サイドステップをするか否か
    data modify storage asset:mob Field.SideStep set value true

# バニラ近接ダメージ
    data modify storage asset:mob Field.Vanilla.Damage set value 41f

# 斬撃
    data modify storage asset:mob Field.Sword.Damage set value 41f
    data modify storage asset:mob Field.Sword.AttackType set value "Physical"
    data modify storage asset:mob Field.Sword.ElementType set value "Fire"

# 矢
    data modify storage asset:mob Field.Arrow.ID set value 2172
    data modify storage asset:mob Field.Arrow.Damage set value 23f
    data modify storage asset:mob Field.Arrow.Speed set value 3
