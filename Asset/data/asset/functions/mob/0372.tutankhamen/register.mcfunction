#> asset:mob/0372.tutankhamen/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/372/register

# 継承　
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 372
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ツタンカーメン","color":"#13b3aa"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"その名は有名なファラオを彷彿とさせるが、","color":"white"}','{"text":"この天使は、様々な歴史や、人々の持つイメージなどを元に作り上げられた存在でしかない。","color":"white"}','{"text":"一体どんなイメージが紛れ込んだのか、この天使は魔術と剣術、両方に秀でている。","color":"white"}']
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
    data modify storage asset:mob Health set value 175000d
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0.0d
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.0d
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.1f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.7f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.1f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

# フィールド
# ダメージ

# 怨霊弾
    data modify storage asset:mob Field.Damage.ManyShoot set value 30f
# レーザー
    data modify storage asset:mob Field.Damage.Laser set value 30f
# ハイパーレーザー
    data modify storage asset:mob Field.Damage.HyperLaser set value 55f
# 突進
    data modify storage asset:mob Field.Damage.Dash.Charge set value 30f
# ダッシュからの斬撃
    data modify storage asset:mob Field.Damage.Dash.Slash set value 45f
