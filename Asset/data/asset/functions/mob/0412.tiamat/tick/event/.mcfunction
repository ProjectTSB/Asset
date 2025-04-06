#> asset:mob/0412.tiamat/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0412.tiamat/tick/

# 登場
    execute if entity @s[tag=BG.Skill.Start] run function asset:mob/0412.tiamat/tick/event/start/

# 待機
    execute if entity @s[tag=BG.Skill.Idle] run function asset:mob/0412.tiamat/tick/event/idle/
# 移動
    execute if entity @s[tag=BG.Skill.Move] run function asset:mob/0412.tiamat/tick/event/move/

# 通常攻撃
    execute if entity @s[tag=BG.Skill.Attack] run function asset:mob/0412.tiamat/tick/event/attack/

# ダークブレス
    execute if entity @s[tag=BG.Skill.DarkBreath] run function asset:mob/0412.tiamat/tick/event/darkbreath/

# ヘルウィング
    execute if entity @s[tag=BG.Skill.HellWing] run function asset:mob/0412.tiamat/tick/event/hellwing/

# テルツェット・サクセッション
    execute if entity @s[tag=BG.Skill.Ter.Succ.A] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/
    execute if entity @s[tag=BG.Skill.Ter.Succ.B] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_b/
    execute if entity @s[tag=BG.Skill.Ter.Succ.Dive] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/

# テルツェット・ディザスター
    execute if entity @s[tag=BG.Skill.Ter.Dis] run function asset:mob/0412.tiamat/tick/event/terzetto_disaster/

# テルツェット・アライニング
    execute if entity @s[tag=BG.Skill.Ter.Alig] run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/

# テルツェット・プルガトリオ
    execute if entity @s[tag=BG.Skill.Ter.Purg.A] run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/
    execute if entity @s[tag=BG.Skill.Ter.Purg.B] run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/

# テルツェット・ラグナレク
    execute if entity @s[tag=BG.Skill.Ter.Rag] run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# 行動キャンセル
    execute if entity @s[tag=BG.Skill.Ter.Cancel] run function asset:mob/0412.tiamat/tick/event/terzetto_cancel/

# ソウルオファリング
    execute if entity @s[tag=BG.Skill.Offering] run function asset:mob/0412.tiamat/tick/event/offering/
    # 時間切れ版
        execute if entity @s[tag=BG.Skill.Freeze] run function asset:mob/0412.tiamat/tick/event/offering_end/
