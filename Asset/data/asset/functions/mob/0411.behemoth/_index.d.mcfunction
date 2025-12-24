#> asset:mob/0411.behemoth/_index.d
# @private

#> tag
# @within function asset:mob/0411.behemoth/**
# AnimatedJava処理(エラー対策)
    # - 処理
    #declare function animated_java:behemoth_aj/summon
    #declare function animated_java:behemoth_aj/remove/all
    #declare function animated_java:behemoth_aj/animations/pause_all
    #declare function animated_java:behemoth_aj/as_own_locator_entities
    # - アニメーション再生
    #declare function animated_java:behemoth_aj/animations/0_start/tween
    #declare function animated_java:behemoth_aj/animations/1_idle/tween
    #declare function animated_java:behemoth_aj/animations/2_move/tween
    #declare function animated_java:behemoth_aj/animations/3_0_cast_start/tween
    #declare function animated_java:behemoth_aj/animations/3_1_casting/tween
    #declare function animated_java:behemoth_aj/animations/3_2_cast_start_dive/tween
    #declare function animated_java:behemoth_aj/animations/3_3_casting_dive/tween
    #declare function animated_java:behemoth_aj/animations/3_4_cast_start_flatten/tween
    #declare function animated_java:behemoth_aj/animations/3_5_casting_flatten/tween
    #declare function animated_java:behemoth_aj/animations/4_breath/tween
    #declare function animated_java:behemoth_aj/animations/4_breath_continue/tween
    #declare function animated_java:behemoth_aj/animations/5_flatten/tween
    #declare function animated_java:behemoth_aj/animations/6_0_flymove_start/tween
    #declare function animated_java:behemoth_aj/animations/6_1_flymove_end/tween
    #declare function animated_java:behemoth_aj/animations/7_dive/tween
    #declare function animated_java:behemoth_aj/animations/8_attack/tween
    #declare function animated_java:behemoth_aj/animations/10_0_blazing_start/tween
    #declare function animated_java:behemoth_aj/animations/10_1_blazing_cast/tween
    #declare function animated_java:behemoth_aj/animations/10_2_blazing_end/tween
    #declare function animated_java:behemoth_aj/animations/11_offering/tween
    # - 自動生成タグ
    #declare tag aj.global.data
    #declare tag aj.behemoth_aj.animation.0_start.playing
    #declare tag aj.behemoth_aj.animation.1_idle.playing
    #declare tag aj.behemoth_aj.animation.2_move.playing
    #declare tag aj.behemoth_aj.animation.6_0_flymove_start.playing
    #declare tag aj.behemoth_aj.animation.6_1_flymove_end.playing
    # - 自動生成スコア
    #declare objective aj.0_start.frame
    #declare objective aj.1_idle.frame
    #declare objective aj.2_move.frame
    #declare objective aj.6_0_flymove_start.frame
    #declare objective aj.6_1_flymove_end.frame
    # - 共通
    #declare tag BF.EntityRoot 自分自身（当たり判定）
    #declare tag BF.ModelRoot AJモデルのRootEntity
    #declare tag BE.EntityRoot ヘイローンのRootEntity
    #declare tag BE.ModelRoot ヘイローンのRootEntity
    #declare tag BG.ModelRoot ティアマットのRootEntity
    #declare tag BE.CenterPosition 中心点(ヘイローンのものを使用)
    #
    # - スキル
    #declare tag BF.Skill.Start 登場
    #declare tag BF.Skill.Idle 待機
    #declare tag BF.Skill.Move 移動
    #declare tag BF.Skill.Attack 通常攻撃
    #declare tag BF.Skill.FlareBreath フレアブレス
    #declare tag BF.Skill.Flatten フラッテン
    #declare tag BF.Skill.Ter.Succ.A テルツェット・サクセッション ヘイローン先行
    #declare tag BF.Skill.Ter.Succ.B テルツェット・サクセッション 眷属先行
    #declare tag BF.Skill.Ter.Succ.Dive テルツェット・サクセッション 連続ダイブ
    #declare tag BF.Skill.Ter.Dis テルツェット・ディザスター
    #declare tag BF.Skill.Ter.Alig テルツェット・アライニング
    #declare tag BF.Skill.Ter.Purg テルツェット・プルガトリオ
    #declare tag BF.Skill.Ter.Rag テルツェット・ラグナレク
    #declare tag BF.Skill.Ter.Cancel 行動キャンセル
    #declare tag BF.Skill.Blaze ブレイジングエンド
    #declare tag BF.Skill.Offering ソウルオファリング
    #
    # - 処理用
    #declare tag BF.MainTarget 主ターゲット
    #declare tag BF.FlareTarget ロックオンフレアターゲット
    #declare tag BE.State.BehemothDeath ヘイローンに自身が倒れたことを教える
    #
    # - 一時
    #declare tag BF.State.Wait 待機
    #declare tag BF.State.UseFlare フレアブレス使用
    #declare tag BF.Temp.Dummy
    #declare tag BF.Temp.Hit
    #declare tag BF.Temp.Ground 角度決定用
    #declare tag BF.Temp.AttackRotation 角度決定用
    #declare tag BF.Temp.AttackPosition 位置決定用
    #declare tag BF.Temp.AttackHit 攻撃ヒット検知用
    #
    # - オブジェクト
    #declare tag BF.Object オブジェクト共通タグ
    #declare tag BE.Circle 魔法陣
    #declare tag 2180.Pillar 氷柱
    #declare tag 2180.Pillar.Death 氷柱破壊
    #declare tag 2181.Line ロックオンフレア予告線
    #declare tag 2181.Line.End ロックオンフレア予告線
