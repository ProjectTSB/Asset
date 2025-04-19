#> asset:mob/0380.haruclaire_v3/_index.d
# @private

#> tag
# @within function asset:mob/0380.haruclaire_v3/**
    # - AJ自動生成ファンクション
    #declare function animated_java:haruclaire_aj/summon
    #declare function animated_java:haruclaire_aj/variants/default/apply
    #declare function animated_java:haruclaire_aj/variants/blink/apply
    #declare function animated_java:haruclaire_aj/variants/damage/apply
    #declare function animated_java:haruclaire_aj/variants/jito/apply
    #declare function animated_java:haruclaire_aj/animations/pause_all
    #declare function animated_java:haruclaire_aj/animations/0_0_start/tween
    #declare function animated_java:haruclaire_aj/animations/1_0_rod_idle/tween
    #declare function animated_java:haruclaire_aj/animations/3_0_rod_move/tween
    #declare function animated_java:haruclaire_aj/animations/4_0_rod_icewall/tween
    #declare function animated_java:haruclaire_aj/animations/5_0_rod_icebullet/tween
    #declare function animated_java:haruclaire_aj/animations/6_0_rod_icefang/tween
    #declare function animated_java:haruclaire_aj/animations/6_1_rod_super_icebullet/tween
    #declare function animated_java:haruclaire_aj/animations/7_0_rod_icespear/tween
    #declare function animated_java:haruclaire_aj/animations/7_1_rod_iceray/tween
    #declare function animated_java:haruclaire_aj/animations/8_0_rod_punch/tween
    #declare function animated_java:haruclaire_aj/animations/9_0_rod_laser/tween
    #declare function animated_java:haruclaire_aj/animations/20_second_start/tween
    #declare function animated_java:haruclaire_aj/animations/21_0_second_idle/tween
    #declare function animated_java:haruclaire_aj/animations/22_0_second_sword/tween
    #declare function animated_java:haruclaire_aj/animations/24_0_second_sword_line_first/tween
    #declare function animated_java:haruclaire_aj/animations/24_0_second_sword_line_short/tween
    #declare function animated_java:haruclaire_aj/animations/25_0_second_icebullet_duo/tween
    #declare function animated_java:haruclaire_aj/animations/26_0_second_ice_cremation_first/tween
    #declare function animated_java:haruclaire_aj/animations/26_1_second_ice_cremation_short/tween
    #declare function animated_java:haruclaire_aj/animations/27_0_second_icepillar/tween
    #declare function animated_java:haruclaire_aj/animations/28_0_second_icewall/tween
    #declare function animated_java:haruclaire_aj/animations/29_0_second_press/tween
    #declare function animated_java:haruclaire_aj/animations/30_0_move_back/tween
    #declare function animated_java:haruclaire_aj/animations/30_0_move_forward/tween
    #declare function animated_java:haruclaire_aj/animations/30_0_move_right/tween
    #declare function animated_java:haruclaire_aj/animations/30_0_move_left/tween
    #declare function animated_java:haruclaire_aj/animations/31_0_second_icespear/tween
    #declare function animated_java:haruclaire_aj/animations/32_0_second_icespinner/tween
    #declare function animated_java:haruclaire_aj/remove/all
    #declare function animated_java:ic_capri_aj/remove/all
    #declare function animated_java:ic_tau_aj/remove/all
    #declare function animated_java:ic_pisce_aj/remove/all
    #
    # - AJ自動生成タグ
    #declare tag aj.haruclaire_aj.animation.0_0_start.playing
    #declare tag aj.haruclaire_aj.animation.1_0_rod_idle.playing
    #declare tag aj.haruclaire_aj.animation.3_0_rod_move.playing
    #declare tag aj.haruclaire_aj.animation.4_0_rod_icewall.playing
    #declare tag aj.haruclaire_aj.animation.5_0_rod_icebullet.playing
    #declare tag aj.haruclaire_aj.animation.6_0_rod_icefang.playing
    #declare tag aj.haruclaire_aj.animation.6_1_rod_super_icebullet.playing
    #declare tag aj.haruclaire_aj.animation.8_0_rod_punch.playing
    #declare tag aj.haruclaire_aj.animation.9_0_rod_laser.playing
    #declare tag aj.haruclaire_aj.animation.21_0_second_idle.playing
    #
    # - AJ自動生成スコア
    #declare objective aj.0_0_start.frame
    #declare objective aj.1_0_rod_idle.frame
    #declare objective aj.3_0_rod_move.frame
    #declare objective aj.4_0_rod_icewall.frame
    #declare objective aj.5_0_rod_icebullet.frame
    #declare objective aj.6_0_rod_icefang.frame
    #declare objective aj.6_1_rod_super_icebullet.frame
    #declare objective aj.8_0_rod_punch.frame
    #declare objective aj.9_0_rod_laser.frame
    #declare objective aj.21_0_second_idle.frame
    #
    # - 汎用
    #declare tag AK.EntityRoot 本体
    #declare tag AK.ModelRoot かわいいハルクレアのガワ
    #declare tag AK.MainTarget 狙っている対象
    #declare tag AK.Debug デバッグ中
    #declare tag AK.Stat.Latter 後半戦
    #
    # - スキル
    #declare tag AK.Skill.Start 登場
    #declare tag AK.Skill.Move 移動
    #declare tag AK.Skill.MoveS 移動・後半戦
    #declare tag AK.Skill.IceBullet アイスバレット・エトワール
    #declare tag AK.Skill.IceWall アイスウォール
    #declare tag AK.Skill.IceSiege アイスシージ
    #declare tag AK.Skill.IceSpear アイススピア
    #declare tag AK.Skill.Punch ぶんぶんぶん殴り
    #declare tag AK.Skill.SuperIceBullet アイスバレット・ソレイユ
    #declare tag AK.Skill.IceLaser アイスレーザー
    #declare tag AK.Skill.IcePillar アイスピラー
    #declare tag AK.Skill.SummonHato ハトクレア召喚
    #declare tag AK.Skill.Blade アイシクルブレード
    #declare tag AK.Skill.Giant ジャイアントブレード
    #declare tag AK.Skill.Giant.Short ジャイアントブレード時短版
    #declare tag AK.Skill.IceBulletDuo アイスバレット・デュオ
    #declare tag AK.Skill.IceWallDuo アイスウォール
    #declare tag AK.Skill.IcePillarDuo アイスピラー
    #declare tag AK.Skill.IceSpearDuo アイススピア
    #declare tag AK.Skill.IceSpinner アイススピナー
    #declare tag AK.Skill.Press 押しつぶし
    #declare tag AK.Skill.IceCremation.First アイスクリメーション・初回
    #declare tag AK.Skill.IceCremation.First.Used アイスクリメーション・初回
    #declare tag AK.Skill.IceCremation.Dash アイスクリメーション・連続突進
    #declare tag AK.Skill.IceCremation.FourCircle アイスクリメーション・円範囲4体
    #declare tag AK.Skill.IceCremation.Cross アイスクリメーション・交差
    #declare tag AK.Skill.IceCremation.CircleLine アイスクリメーション・円+直線
    #
    # - 他Entity
    #declare tag AK.CenterPosition 召喚位置
    #declare tag AK.IceSpear.Spread アイススピア召喚位置
    #declare tag AK.IceWall.A アイスウォールタイプ
    #declare tag AK.IceWall.B アイスウォールタイプ
    #declare tag AK.IceWall.C アイスウォールタイプ
    #declare tag AK.IceCrepation.Pos アイスクリメーション召喚位置
    #declare tag AK.IceCrepation.Pos.A アイスクリメーション召喚位置
    #declare tag AK.IceCrepation.Pos.B アイスクリメーション召喚位置
    #declare tag AK.IceCrepation.Pos.C アイスクリメーション召喚位置
    #
    # - 一時タグ
    #declare tag AK.Temp.Ground 接地用
    #declare tag AK.Temp.Hit ヒット確認用
    #declare tag AK.Temp.Right 角度変更用
    #declare tag AK.Temp.FixedRotation 角度固定
    #declare tag AK.Temp.AttackPosition 攻撃位置保持用
    #declare tag AK.Temp.AttackPosition.Hard 攻撃位置保持用
    #declare tag AK.Temp.AttackRotation 攻撃角度保持用
    #declare tag AK.Temp.Start 初期化処理の重複防止
    #
    # - 他オブジェクト
    #declare tag AK.Object ハルクレアオブジェクト共通タグ
    #declare tag 2155.Object アイスレーザー
    #declare tag AK.IceCreature.Root アイスクリーチャーオブジェクト
    #declare tag AK.IceCreature.Model アイスクリーチャーモデル
    #declare tag AK.IceCreature.Remove アイスクリーチャー消去
