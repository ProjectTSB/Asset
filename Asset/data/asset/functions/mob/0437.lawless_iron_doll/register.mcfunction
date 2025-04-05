#> asset:mob/0437.lawless_iron_doll/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/437/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 437
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
# ただし冒頭のみで、すぐに無敵でなくなる
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"無法の鉄塊人形","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
#    data modify storage asset:mob Lore set value ['{"text":"大きな身体と大きな","color":"white"}','{"text":"テレポートやブーストを駆使した動きで敵を翻弄する。","color":"white"}','{"text":"「アブソリュートドライブ」により、限界を超えた性能を発揮することができる。","color":"white"}']
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
        data modify storage asset:mob Field.Skill.List set value [0,1,2,3]

    # ダメージ設定
        # 騎士の頭
            # 薙ぎ払い
                data modify storage asset:mob Field.Damage.Slash1 set value 50f
            # 薙ぎ払いの発射体
                data modify storage asset:mob Field.Damage.SlashShot1 set value 40f
            # 袈裟斬り
                data modify storage asset:mob Field.Damage.Slash2 set value 50f
            # 袈裟斬りの発射体
                data modify storage asset:mob Field.Damage.SlashShot2 set value 50f
            # 突進
                data modify storage asset:mob Field.Damage.Charge set value 50f
            # スーパー叩きつけ攻撃
                data modify storage asset:mob Field.Damage.SuperSlam set value 60f

        # 魔法使いの頭
            # 低速誘導弾
                data modify storage asset:mob Field.Damage.ChaserShot set value 35f
            # 持続大型弾(防御貫通)
                data modify storage asset:mob Field.Damage.MistShot set value 5f
            # 拡散小型弾
                data modify storage asset:mob Field.Damage.SpreadShot set value 30f
            # スーパーレーザー攻撃(オマケ)
                data modify storage asset:mob Field.Damage.SuperLaserSub set value 20f
            # スーパーレーザー攻撃(メイン)
                data modify storage asset:mob Field.Damage.SuperLaserMain set value 30f
