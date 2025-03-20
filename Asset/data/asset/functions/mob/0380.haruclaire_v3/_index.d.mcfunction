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
    #declare function animated_java:haruclaire_aj/remove/all
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
    #
    # - 汎用
    #declare tag AK.EntityRoot 本体
    #declare tag AK.ModelRoot かわいいハルクレアのガワ
    #declare tag AK.MainTarget 狙っている対象
    #declare tag AK.Debug デバッグ中
    #
    # - スキル
    #declare tag AK.Skill.Start 登場
    #declare tag AK.Skill.Move 移動
    #declare tag AK.Skill.IceBullet アイスバレット・エトワール
    #declare tag AK.Skill.IceWall アイスウォール
    #declare tag AK.Skill.IceSiege アイスシージ
    #declare tag AK.Skill.IceSpear アイススピア
    #declare tag AK.Skill.Punch ぶんぶんぶん殴り
    #declare tag AK.Skill.SuperIceBullet アイスバレット・ソレイユ
    #declare tag AK.Skill.IceLaser アイスレーザー
    #declare tag AK.Skill.IcePillar アイスピラー
    #declare tag AK.Skill.SummonHato ハトクレア召喚
    #
    # - 他Entity
    #declare tag AK.CenterPosition 召喚位置
    #declare tag AK.IceSpear.Spread アイススピア召喚位置
    #
    # - 一時タグ
    #declare tag AK.Temp.Ground 接地用
    #declare tag AK.Temp.Hit ヒット確認用
    #declare tag AK.Temp.Right 角度変更用
    #declare tag AK.Temp.AttackPosition 攻撃位置保持用
    #declare tag AK.Temp.AttackPosition.Hard 攻撃位置保持用
    #declare tag AK.Temp.AttackRotation 攻撃角度保持用
    #
    # - 他オブジェクト
    #declare tag AK.Object ハルクレアオブジェクト共通タグ
    #declare tag 2155.Object アイスレーザー
