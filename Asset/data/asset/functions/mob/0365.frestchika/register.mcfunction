#> asset:mob/0365.frestchika/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/365/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 365
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
# ただし冒頭のみで、すぐに無敵でなくなる
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"C.D.フレストチカ","color":"#37CDFF"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"高性能な機械の身体を持つ天使。","color":"white"}','{"text":"テレポートやブーストを駆使した動きで敵を翻弄する。","color":"white"}','{"text":"「アブソリュートドライブ」により、限界を超えた性能を発揮することができる。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 140000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.9
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.2
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.7
# フィールド
    # スキルのリスト
        data modify storage asset:mob Field.Skill.List set value [0,1,2,3,4,5]
    # ダメージ
        # ダッシュ斬り
            data modify storage asset:mob Field.Damage.FrontDashSlash set value 40f
        # 居合
            data modify storage asset:mob Field.Damage.ChargeSlash set value 50f
        # ワープ斬り
            data modify storage asset:mob Field.Damage.RandomTeleportSlash set value 50f
        # 直接発射レーザー
            data modify storage asset:mob Field.Damage.RapidLaser set value 25f
        # ディレイレーザー
            data modify storage asset:mob Field.Damage.DelayLaser set value 25f
        # 座標レーザー(小)
            data modify storage asset:mob Field.Damage.CordinateLaser set value 40f
        # 座標レーザー(大)
            data modify storage asset:mob Field.Damage.SuperCordinateLaser set value 60f
        # 居合サンダー
            data modify storage asset:mob Field.Damage.ChargeSlashThunder set value 50f
