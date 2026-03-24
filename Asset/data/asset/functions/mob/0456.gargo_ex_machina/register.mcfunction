#> asset:mob/0456.gargo_ex_machina/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/456/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 456
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
    data modify storage asset:mob IsForwardTarget set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"絡繰仕掛の石像"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":" > Exception in thread \\"main\\"": java.lang.NullPointerException","color":"red"}','{"text":"       at item.artifact.getLore(atf/0001.book_of_all-seeing)","color":"red"}','{"text":"   Caused by: java.util.NoSuchElementException: Missing \'Lore\'","color":"red"}']
# 体力 (double) (オプション)
# 前後半戦で回復するので実態の半分の値を入れる
    data modify storage asset:mob Health set value 120000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド
    # 石像の初期位置
        data modify storage asset:mob Field.FirstPos.X set value 527.5
        data modify storage asset:mob Field.FirstPos.Y set value 91.0
        data modify storage asset:mob Field.FirstPos.Z set value 836.0
    # フェーズチェンジ
        data modify storage asset:mob Field.Damage.ChangeHead set value {Amount:500.0,Type:"Physical",Element:"None"}
    # 剣叩きつけ
        data modify storage asset:mob Field.Damage.SwordAttack set value {Amount:80.0,Type:"Physical",Element:"None"}
    # 半面焼きビーム
        data modify storage asset:mob Field.Damage.HalfBeam set value {Amount:110.0,Type:"Magic",Element:"None"}
    # 半面焼きビーム・回転斬り部分
        data modify storage asset:mob Field.Damage.HalfBeamSword set value {Amount:100.0,Type:"Physical",Element:"None"}
    # スーパージャンプ
        data modify storage asset:mob Field.Damage.SuperJump set value {Amount:90.0,Type:"Physical",Element:"None"}
    # 色床
        data modify storage asset:mob Field.Damage.FieldModify set value {Amount:120.0,Type:"Magic",Element:"None"}
    # 射撃
        data modify storage asset:mob Field.Damage.Shot set value {Amount:65.0,Type:"Magic",Element:"None"}
    # ロケットパンチ
        data modify storage asset:mob Field.Damage.RocketPunch set value {Amount:80.0,Type:"Physical",Element:"None"}
    # ドローン
        data modify storage asset:mob Field.Damage.AttackDrone set value {Amount:90.0,Type:"Physical",Element:"None"}
        data modify storage asset:mob Field.Damage.YeeterDrone set value {Amount:90.0,Type:"Physical",Element:"None"}
        data modify storage asset:mob Field.Damage.PanjanDrone set value {Amount:90.0,Type:"Physical",Element:"None"}
        data modify storage asset:mob Field.Damage.PanjanDrone.Flame set value {Amount:40.0,Type:"Magic",Element:"Fire"}
