#> asset:mob/0340.twins_rubiel/register
# @within asset:mob/alias/340/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends

# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 340
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ルビエル","color":"#ffbfd4"}'
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.5f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

# ダメージ
# 移動斬り
    # 移動斬り
        data modify storage asset:mob Field.Damage.MoveSlash set value 45f
    # 突き
        data modify storage asset:mob Field.Damage.MoveSpear set value 56f
    # 真空斬り
        data modify storage asset:mob Field.Damage.VacuSlash set value 65f
    # 真空斬り追撃
        data modify storage asset:mob Field.Damage.VacuSlashImpact set value 72f
# 斬り下がり
    # 斬り下がり・最大2ヒット
        data modify storage asset:mob Field.Damage.DoubleSlash set value 42f
# ワープ
    # 攻撃・最大2ヒット
        data modify storage asset:mob Field.Damage.WarpSlash set value 46f
    # 投げナイフ
        data modify storage asset:mob Field.Damage.WarpKnife set value 50f
    # 突き
        data modify storage asset:mob Field.Damage.WarpSpear set value 56f
# 納刀
    # カウンター
        data modify storage asset:mob Field.Damage.IaiCounter set value 55f
    # 十文字・最大2ヒット
        data modify storage asset:mob Field.Damage.Iai set value 53f
# 飛び込み
    # 飛び込み斬り
        data modify storage asset:mob Field.Damage.JumpSlash set value 50f
    # 水平斬り
        data modify storage asset:mob Field.Damage.Horizon set value 48f
    # 二刀流水平斬り・最大2ヒット
        data modify storage asset:mob Field.Damage.DualHorison set value 44f
    # 二刀流回転斬り・ヒット数不安定
        data modify storage asset:mob Field.Damage.DualSpin set value 53f
    # 二刀流交差斬り
        data modify storage asset:mob Field.Damage.DualCross set value 62f
    # キャンセル投げナイフ
        data modify storage asset:mob Field.Damage.CancelKnife set value 50f
# 大外刈り
    # 掴み・ダメージはほぼ演出用
        data modify storage asset:mob Field.Damage.Catch set value 5f
    # 投げ・ダメージはほぼ演出用
        data modify storage asset:mob Field.Damage.Throw set value 10f
    # 追撃
        data modify storage asset:mob Field.Damage.ThrowSlash set value 55f
# シンクロ・交差攻撃
    # 斬り上げ
        data modify storage asset:mob Field.Damage.SyncUpper set value 35f
# シンクロ・ルビィぶん投げ
    # 直撃
        data modify storage asset:mob Field.Damage.SyncThrowNear set value 70f
    # 外側
        data modify storage asset:mob Field.Damage.SyncThrowFar set value 55f
    # 追撃
        data modify storage asset:mob Field.Damage.SyncThrowImpact set value 47f
# 怯み庇い
    # 飛び込み斬り
        data modify storage asset:mob Field.Damage.CoverJump set value 55f
    # 二刀流水平斬り・最大2ヒット
        data modify storage asset:mob Field.Damage.CoverHorizon set value 42f
    # 二刀流交差斬り
        data modify storage asset:mob Field.Damage.CoverDual set value 62f
