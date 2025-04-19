#> asset:mob/0410.heiloang/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/410/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 410
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 干渉可能
    data modify storage asset:mob IsForwardTarget set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"『黒龍』"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"蘇りし黒き天災の権化、真名はヘイローン。"}','{"text":"汝、見てはならぬ、聞いてはならぬ、知ってはならぬ。"}','{"text":"禁忌に触れることこそが最も愚かなる禁忌なり。"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 130000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.2f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.7f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド

# ダメージ
    # ヘルファイア：スリップダメージ
        data modify storage asset:mob Field.Damage.Hellfire set value 20.0f
    # アダマントスパイク
        # 本体
            data modify storage asset:mob Field.Damage.Adamant set value 60.0f
        # ヘヴンリースパイク
            data modify storage asset:mob Field.Damage.Heavenly set value 45.0f
    # リヒトブリッツェン
        # 直線雷
            data modify storage asset:mob Field.Damage.Blitz set value 40.0f
        # 回転雷
            data modify storage asset:mob Field.Damage.BlitzSpin set value 20.0f
    # エンハンスドディザスター：全属性共通
        data modify storage asset:mob Field.Damage.Ehd set value 60.0f
    # 移動
        data modify storage asset:mob Field.Damage.Move set value 50.0f
    # 竜巻
        data modify storage asset:mob Field.Damage.Tornado set value 60.0f
    # なぎはらい火炎放射
        data modify storage asset:mob Field.Damage.Sweep set value 50.0f
    # テンペスト：落下ダメージは含まない
        data modify storage asset:mob Field.Damage.Tempest set value 55.0f
    # テルツェット・サクセッション
        # ダイブ
            data modify storage asset:mob Field.Damage.TerSuccStart set value 50.0f
        # 連続ダイブ
            data modify storage asset:mob Field.Damage.TerSuccDive set value 56.0f
    # テルツェット・ディザスター
        # 外周の雷
            data modify storage asset:mob Field.Damage.TerDisBlitz set value 60.0f
    # テルツェット・アライニング
        # 雷
            data modify storage asset:mob Field.Damage.TerAligBlitz set value 55.0f
        # ヘヴンリースパイク
            data modify storage asset:mob Field.Damage.TerAligIce set value 60.0f
    # テルツェット・プルガトリオ
        # ダイブはTerSuccStartを使用
        # ロックオン雷
            data modify storage asset:mob Field.Damage.TerPurgThunder set value 60.0f
    # テルツェット・ラグナレク
        # 直線雷はTerAlihBlitzを使用
        # 回転雷はBlitzSpinを使用
        # テンペストはTempestを使用
        # ロックオン雷はTerPurgThunderを使用
    # P4：パワーチャージ段階に応じてダメージ増加、目安は1段階につき+10%くらい
        # ヘイルディザスター
            # 攻撃は汎用および他の処理を利用
        # フレアレイ
            data modify storage asset:mob Field.Damage.FlareRay0 set value 55.0f
            data modify storage asset:mob Field.Damage.FlareRay1 set value 62.0f
            data modify storage asset:mob Field.Damage.FlareRay2 set value 70.0f
        # 急降下
            # 直撃
                data modify storage asset:mob Field.Damage.Plamet0 set value 65.0f
                data modify storage asset:mob Field.Damage.Plamet1 set value 70.0f
                data modify storage asset:mob Field.Damage.Plamet2 set value 75.0f
            # 追撃：ドーナツ範囲
                data modify storage asset:mob Field.Damage.Pursuit0 set value 45.0f
                data modify storage asset:mob Field.Damage.Pursuit1 set value 50.0f
                data modify storage asset:mob Field.Damage.Pursuit2 set value 55.0f
            # ダイブ
                data modify storage asset:mob Field.Damage.TDive0 set value 55.0f
                data modify storage asset:mob Field.Damage.TDive1 set value 65.0f
                data modify storage asset:mob Field.Damage.TDive2 set value 75.0f
            # テンペスト
                data modify storage asset:mob Field.Damage.TempestD0 set value 60.0f
                data modify storage asset:mob Field.Damage.TempestD1 set value 66.0f
                data modify storage asset:mob Field.Damage.TempestD2 set value 72.0f
        # パワーブレス
            # 直撃
                data modify storage asset:mob Field.Damage.PowerBreath0 set value 85.0f
                data modify storage asset:mob Field.Damage.PowerBreath1 set value 92.0f
                data modify storage asset:mob Field.Damage.PowerBreath2 set value 100.0f
            # 衝撃波
                data modify storage asset:mob Field.Damage.PbImpact0 set value 45.0f
                data modify storage asset:mob Field.Damage.PbImpact1 set value 55.0f
                data modify storage asset:mob Field.Damage.PbImpact2 set value 65.0f
    # 汎用
        # 炎
            data modify storage asset:mob Field.Damage.FireBurst set value 45.0f
        # 氷
            data modify storage asset:mob Field.Damage.IceBurst set value 45.0f
        # 雷
            data modify storage asset:mob Field.Damage.ThunderBurst set value 50.0f
        # 風
            data modify storage asset:mob Field.Damage.WindBurst set value 42.0f
            data modify storage asset:mob Field.Damage.WindBurstHard set value 60.0f
    # 究極幻想については特殊なダメージ計算のため、以下を参照
        # asset:mob/0410.heiloang/tick/event/final_flare/damage
    # ティアマットの氷柱破壊時の放電についても、特殊なため以下を参照
        # asset:object/2180.tiamat_pillar/tick/attack_0
        # asset:object/2180.tiamat_pillar/tick/attack_1
