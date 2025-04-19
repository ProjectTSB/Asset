#> asset:mob/0339.twins_sapphiel/register
# @within asset:mob/alias/339/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends

# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 339
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"サフィエル","color":"#a1faf5"}'
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.5f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

# ダメージ
# 射撃
    # 奇数
        data modify storage asset:mob Field.Damage.Shot set value 36f
    # 偶数(低威力)
        data modify storage asset:mob Field.Damage.ShotWeak set value 29f
# ライダーキック
    # ライダーキック
        data modify storage asset:mob Field.Damage.RiderKick set value 55f
    # 回し蹴り
        data modify storage asset:mob Field.Damage.SpinKick set value 50f
    # 連続蹴り・最大3ヒット
        data modify storage asset:mob Field.Damage.KickCombo set value 46f
# 正拳突き
    # 正拳突き
        data modify storage asset:mob Field.Damage.Punch set value 58f
    # 足払い・この後の追撃が本番のため、ダメージは低い
        data modify storage asset:mob Field.Damage.LowKick set value 10f
# ワープ
    # かかと落とし
        data modify storage asset:mob Field.Damage.HeelOff set value 55f
    # 後ろ回し蹴り・最大2ヒット
        data modify storage asset:mob Field.Damage.HeelSpin set value 42f
    # 上の後射撃
# ロケラン
    data modify storage asset:mob Field.Damage.Launcher set value 85f
# 怯み庇い
    # ライダーキック・RiderKickを使用
    # 回し蹴り
        data modify storage asset:mob Field.Damage.CoverSpin set value 60f
    # 足払い
        data modify storage asset:mob Field.Damage.CoverLow set value 45f
