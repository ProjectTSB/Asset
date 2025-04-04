#> asset:mob/0380.haruclaire_v3/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/380/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 380
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ハルクレア","color":"aqua"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1750
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.2f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.7f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド
# 各スキルのダメージ設定
    # アイスバレット・エトワール
        data modify storage asset:mob Field.Damage.IceBullet set value 40.0f
    # アイスバレット・ソレイユ
        data modify storage asset:mob Field.Damage.SuperIceBullet set value 70.0f
    # アイスバレット・破片
        data modify storage asset:mob Field.Damage.IceBulletPiece set value 35.0f
    # アイスウォール
        data modify storage asset:mob Field.Damage.IceWall set value 45.0f
    # アイススピア
        data modify storage asset:mob Field.Damage.IceSpear set value 35.0f
        data modify storage asset:mob Field.Damage.SpreadIceSpear set value 35.0f
    # ぶんぶんぶん殴り
        data modify storage asset:mob Field.Damage.Punch1 set value 42.0f
        data modify storage asset:mob Field.Damage.Punch2 set value 30.0f
        # 投げ杖
        data modify storage asset:mob Field.Damage.Punch3 set value 40.0f
    # アイスレーザー
        data modify storage asset:mob Field.Damage.Laser set value 40.0f
    # アイスピラー
        data modify storage asset:mob Field.Damage.Pillar set value 35.0f
    # アイシクルブレード
        data modify storage asset:mob Field.Damage.Blade set value 42.0f
    # ジャイアントブレード
        data modify storage asset:mob Field.Damage.Giant set value 50.0f
    # アイスバレット・デュオ
        data modify storage asset:mob Field.Damage.IceBulletDuo set value 50.0f
        # 密着ダメージ
            data modify storage asset:mob Field.Damage.IceBulletDuoNear set value 60.0f
    # 押しつぶし
        data modify storage asset:mob Field.Damage.Press1 set value 42.0f
        data modify storage asset:mob Field.Damage.Press2 set value 55.0f
    # アイスウォール後半
        data modify storage asset:mob Field.Damage.IceWallDuo set value 52.0f
    # アイススピナー
        data modify storage asset:mob Field.Damage.IceSpinner set value 42.0f
    # アイスクリメーション
        # 初回
            data modify storage asset:mob Field.Damage.ICFirst set value 42.0f
        # 2回目以降
            data modify storage asset:mob Field.Damage.IC set value 60.0f
