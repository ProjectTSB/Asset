#> asset:mob/0027.skull_sniper/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/27/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 27
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"スカルスナイパー","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"元々スケルトンは狙いを付けることを得意とする魔物だが、","color":"white"}','{"text":"この魔物はその中でも卓越した技術を持ち、弓矢ではなく狙撃銃を使う。","color":"white"}','{"text":"狙われてしまったら、壁に隠れて弾丸を防ごう。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:212}}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value {}
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:dragon_egg",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2377487}}}
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value {}
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value {}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 360
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.1
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 50
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.8
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.8
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.4
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1
# フィールド
    data modify storage asset:mob Field.Damage set value 22
    data modify storage asset:mob Field.Pierce set value 0
