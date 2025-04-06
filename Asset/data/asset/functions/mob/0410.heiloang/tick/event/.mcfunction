#> asset:mob/0410.heiloang/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0410.heiloang/tick/

# 暫定的登場
    execute if entity @s[tag=BE.Skill.Start] run function asset:mob/0410.heiloang/tick/event/start_temp/

## P1 - 2
# ヘルファイア
    execute if entity @s[tag=BE.Skill.Hellfire] run function asset:mob/0410.heiloang/tick/event/hellfire/

# アダマントスパイク
    execute if entity @s[tag=BE.Skill.Adamant] run function asset:mob/0410.heiloang/tick/event/adamant_spike/

# リヒトブリッツェン
    execute if entity @s[tag=BE.Skill.Blitz] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/

# エンハンスドディザスター
    execute if entity @s[tag=BE.Skill.Ehd] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# 移動
    execute if entity @s[tag=BE.Skill.Move] run function asset:mob/0410.heiloang/tick/event/move/
    execute if entity @s[tag=BE.Skill.MoveAfterEhd] run function asset:mob/0410.heiloang/tick/event/move_after_ehd/

# 竜巻
    execute if entity @s[tag=BE.Skill.Tornado] run function asset:mob/0410.heiloang/tick/event/tornado/
# なぎはらい火炎放射
    execute if entity @s[tag=BE.Skill.Sweep] run function asset:mob/0410.heiloang/tick/event/sweep/

# テンペスト
    execute if entity @s[tag=BE.Skill.Tempest] run function asset:mob/0410.heiloang/tick/event/tempest/

## P3
# コール：ドラゴンサーヴァント
    execute if entity @s[tag=BE.Skill.CallServants] run function asset:mob/0410.heiloang/tick/event/call_dragon_servants/

# テルツェット・サクセッション
    execute if entity @s[tag=BE.Skill.Ter.Succ.Start] run function asset:mob/0410.heiloang/tick/event/terzetto_succession_start/
    execute if entity @s[tag=BE.Skill.Ter.Succ.A] run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/
    execute if entity @s[tag=BE.Skill.Ter.Succ.B] run function asset:mob/0410.heiloang/tick/event/terzetto_succession_b/
    execute if entity @s[tag=BE.Skill.Ter.Succ.Dive] run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/

# テルツェット・ディザスター
    execute if entity @s[tag=BE.Skill.Ter.Dis.Start] run function asset:mob/0410.heiloang/tick/event/terzetto_disaster_start/
    execute if entity @s[tag=BE.Skill.Ter.Dis] run function asset:mob/0410.heiloang/tick/event/terzetto_disaster/

# テルツェット・アライニング
    execute if entity @s[tag=BE.Skill.Ter.Alig.Start] run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_start/
    execute if entity @s[tag=BE.Skill.Ter.Alig.A] run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/
    execute if entity @s[tag=BE.Skill.Ter.Alig.B] run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/
    execute if entity @s[tag=BE.Skill.Ter.Alig] run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/

# テルツェット・プルガトリオ
    execute if entity @s[tag=BE.Skill.Ter.Purg.Start] run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio_start/
    execute if entity @s[tag=BE.Skill.Ter.Purg] run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/

# テルツェット・ラグナレク
    execute if entity @s[tag=BE.Skill.Ter.Rag.Start] run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok_start/
    execute if entity @s[tag=BE.Skill.Ter.Rag] run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/

# 行動キャンセル
    execute if entity @s[tag=BE.Skill.Ter.Cancel] run function asset:mob/0410.heiloang/tick/event/terzetto_cancel/

# ソウルオファリング
    execute if entity @s[tag=BE.Skill.Offering] run function asset:mob/0410.heiloang/tick/event/offering/
    # 時間切れ版
        execute if entity @s[tag=BE.Skill.OfferingEnd] run function asset:mob/0410.heiloang/tick/event/offering_end/

# 怯み
    execute if entity @s[tag=BE.Skill.Damage] run function asset:mob/0410.heiloang/tick/event/damage/

# 覚醒
    execute if entity @s[tag=BE.Skill.Rage] run function asset:mob/0410.heiloang/tick/event/rage/

## P4
# 究極幻想
    execute if entity @s[tag=BE.Skill.FinalFlare] run function asset:mob/0410.heiloang/tick/event/final_flare/

# ヘイルディザスター
    execute if entity @s[tag=BE.Skill.HeilDisaster] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0410.heiloang/tick/event/heil_disaster/
    execute if entity @s[tag=BE.Skill.HeilDisaster] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# フレアレイ
    execute if entity @s[tag=BE.Skill.Flare] run function asset:mob/0410.heiloang/tick/event/flare/

# 急降下
    execute if entity @s[tag=BE.Skill.Plamet] run function asset:mob/0410.heiloang/tick/event/plamet/

# パワーブレス
    execute if entity @s[tag=BE.Skill.PowerBreath] run function asset:mob/0410.heiloang/tick/event/power_breath/
    execute if entity @s[tag=BE.Skill.PowerBreath.C1] run function asset:mob/0410.heiloang/tick/event/power_breath_continue_1/
    execute if entity @s[tag=BE.Skill.PowerBreath.C2] run function asset:mob/0410.heiloang/tick/event/power_breath_continue_2/
    execute if entity @s[tag=BE.Skill.PowerBreath.End] run function asset:mob/0410.heiloang/tick/event/power_breath_end/

# パワーチャージ
    execute if entity @s[tag=BE.Skill.PowerCharge] run function asset:mob/0410.heiloang/tick/event/power_charge/
