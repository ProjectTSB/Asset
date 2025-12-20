#> asset:mob/0412.tiamat/_index.d
# @private

#> 共通
# @within function asset:mob/0412.tiamat/**
    #declare tag BG.EntityRoot 自分自身（当たり判定）
    #declare tag BG.ModelRoot AJモデルのRootEntity
    #declare tag BE.ModelRoot ヘイローンのRootEntity
    #declare tag BE.CenterPosition 中心点(ヘイローンのものを使用)

#> スキル
# @within function asset:mob/0412.tiamat/**
    #declare tag BG.Skill.Start 登場
    #declare tag BG.Skill.Idle 待機
    #declare tag BG.Skill.Move 移動
    #declare tag BG.Skill.Attack 通常攻撃
    #declare tag BG.Skill.DarkBreath ダークブレス
    #declare tag BG.Skill.HellWing ヘルウィング
    #declare tag BG.Skill.Ter.Succ.A テルツェット・サクセッション ヘイローン先行
    #declare tag BG.Skill.Ter.Succ.B テルツェット・サクセッション 眷属先行
    #declare tag BG.Skill.Ter.Succ.Dive テルツェット・サクセッション 連続ダイブ
    #declare tag BG.Skill.Ter.Dis テルツェット・ディザスター
    #declare tag BG.Skill.Ter.Alig テルツェット・アライニング
    #declare tag BG.Skill.Ter.Purg.A テルツェット・プルガトリオ 外→内
    #declare tag BG.Skill.Ter.Purg.B テルツェット・プルガトリオ 内→外
    #declare tag BG.Skill.Ter.Rag テルツェット・ラグナレク
    #declare tag BG.Skill.Ter.Cancel 行動キャンセル
    #declare tag BG.Skill.Freeze フリージングエンド
    #declare tag BG.Skill.Offering ソウルオファリング

#> 処理用
# @within function asset:mob/0412.tiamat/**
    #declare tag BG.MainTarget 主ターゲット
    #declare tag BE.State.TiamatDeath ヘイローンに自身が倒れたことを教える

#> 一時
# @within function asset:mob/0412.tiamat/**
    #declare tag BG.State.Wait 待機
    #declare tag BG.State.UseDark ダークブレス使用
    #declare tag BG.Temp.Dummy
    #declare tag BG.Temp.Ground 角度決定用
    #declare tag BG.Temp.AttackHit 攻撃命中検知用
    #declare tag BG.Temp.AttackRotation 角度決定用
    #declare tag BG.Temp.AttackPosition 位置決定用
    #declare tag BG.Temp.PillarPosition 氷柱召喚位置決定用

#> オブジェクト
# @private
    #declare tag BG.Object オブジェクト共通タグ
    #declare tag BE.Circle 魔法陣
    #declare tag 2181.Line 線
    #declare tag 2180.Pillar 氷柱
    #declare tag 2180.Pillar.Death 氷柱破壊

#> AJ 自動生成tag
# @within function asset:mob/0412.tiamat/**
    #declare tag aj.global.data
    #declare tag aj.tiamat_aj.animation.0_start.playing
    #declare tag aj.tiamat_aj.animation.1_idle.playing
    #declare tag aj.tiamat_aj.animation.6_0_flymove_start.playing
    #declare tag aj.tiamat_aj.animation.6_1_flymove_end.playing

#> AJ 自動生成スコア
# @within function asset:mob/0412.tiamat/**
    #declare objective aj.0_start.frame
    #declare objective aj.1_idle.frame
    #declare objective aj.6_0_flymove_start.frame
    #declare objective aj.6_1_flymove_end.frame

#> AJ 処理用
# @within function asset:mob/0412.tiamat/**
    #declare function animated_java:tiamat_aj/summon
    #declare function animated_java:tiamat_aj/remove/all
    #declare function animated_java:tiamat_aj/animations/pause_all
    #declare function animated_java:tiamat_aj/as_own_locator_entities

#> AJ アニメーション
# @within function asset:mob/0412.tiamat/**
    #declare function animated_java:tiamat_aj/animations/0_start/tween
    #declare function animated_java:tiamat_aj/animations/1_idle/tween
    #declare function animated_java:tiamat_aj/animations/2_move/tween
    #declare function animated_java:tiamat_aj/animations/3_0_cast_start/tween
    #declare function animated_java:tiamat_aj/animations/3_1_casting/tween
    #declare function animated_java:tiamat_aj/animations/3_2_cast_land_start/tween
    #declare function animated_java:tiamat_aj/animations/3_3_casting_land/tween
    #declare function animated_java:tiamat_aj/animations/3_4_cast_fly2land_start/tween
    #declare function animated_java:tiamat_aj/animations/3_5_cast_start_dive/tween
    #declare function animated_java:tiamat_aj/animations/3_6_casting_dive/tween
    #declare function animated_java:tiamat_aj/animations/4_breath/tween
    #declare function animated_java:tiamat_aj/animations/5_deathwing/tween
    #declare function animated_java:tiamat_aj/animations/6_0_flymove_start/tween
    #declare function animated_java:tiamat_aj/animations/6_1_flymove_end/tween
    #declare function animated_java:tiamat_aj/animations/7_dive/tween
    #declare function animated_java:tiamat_aj/animations/8_spin/tween
    #declare function animated_java:tiamat_aj/animations/9_roar/tween
    #declare function animated_java:tiamat_aj/animations/10_attack/tween
    #declare function animated_java:tiamat_aj/animations/12_offering/tween
    #declare function animated_java:tiamat_aj/animations/13_offering_end/tween
