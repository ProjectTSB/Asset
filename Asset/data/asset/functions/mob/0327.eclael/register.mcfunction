#> asset:mob/0327.eclael/register
# @within asset:mob/alias/327/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 327
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"エクレール","color":"#91f9ab"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"オーロラは滅多にみられるものではない。"}','{"text":"たとえ姿を見せたとしても、いつも眠そうにフラフラしている。"}','{"text":"元気に活動している姿を見られたら超ラッキー。"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 175000
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.2f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.9f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.8f

# フィールド
# ダメージ
# 前半戦
    # 落雷
        data modify storage asset:mob Field.Damage.Thunder set value 45.0f
    # 剣ビーム
        data modify storage asset:mob Field.Damage.Beam set value 40.0f
    # 居合・2ヒット
        data modify storage asset:mob Field.Damage.Iai set value 42.0f
    # 3連攻撃
        data modify storage asset:mob Field.Damage.Slash0 set value 40.0f
        data modify storage asset:mob Field.Damage.Slash1 set value 35.0f
        data modify storage asset:mob Field.Damage.Slash2 set value 55.0f
    # 射撃
        data modify storage asset:mob Field.Damage.Shot set value 40.0f
    # 曲射・たくさんヒット
        data modify storage asset:mob Field.Damage.UpperShot set value 30.0f
    # 魔法
        data modify storage asset:mob Field.Damage.Magic set value 40.0f
# 後半戦
    # 全体落雷
        data modify storage asset:mob Field.Damage.FieldThunder set value 55.0f
    # 天泣
        # 落下突き
            data modify storage asset:mob Field.Damage.Fall0 set value 65.0f
        # 回転斬り
            data modify storage asset:mob Field.Damage.Fall1 set value 62.0f
        # 落雷
            data modify storage asset:mob Field.Damage.Fall2 set value 52.0f
    # 移動斬り
        # 直接攻撃
            data modify storage asset:mob Field.Damage.Move0 set value 40.0f
        # 移動・3ヒット
            data modify storage asset:mob Field.Damage.Move1 set value 32.0f
        # 次元斬
            data modify storage asset:mob Field.Damage.Move2 set value 50.0f
        # 雷斗星刃・当流
            data modify storage asset:mob Field.Damage.FieldSlash set value 60.0f
    # 残心
        # 直接攻撃
            data modify storage asset:mob Field.Damage.BeamWhip set value 55.0f
        # Blessless次元斬
            data modify storage asset:mob Field.Damage.BeamSlash set value 50.0f
    # 居合・4ヒット
            data modify storage asset:mob Field.Damage.IaiLatter set value 30.0f
    # 点睛
        # 直撃
            data modify storage asset:mob Field.Damage.TenseiSpear set value 60.0f
        # 地面
            data modify storage asset:mob Field.Damage.Tensei set value 50.0f
    # 雷斗星刃・至円・2ヒット
            data modify storage asset:mob Field.Damage.Circle set value 35.0f
    # 曲射
        # 曲射
            data modify storage asset:mob Field.Damage.UpperLatter set value 60.0f
        # 射撃
            data modify storage asset:mob Field.Damage.ShotLatter set value 50.0f
