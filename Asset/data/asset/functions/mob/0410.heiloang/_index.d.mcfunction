#> asset:mob/0410.heiloang/_index.d
# @private

#> tag
# @within function asset:mob/0410.heiloang/**
    # AnimatedJava処理(エラー対策)
    # - 処理
        #declare function animated_java:heiloang_aj/summon
        #declare function animated_java:heiloang_aj/remove/all
        #declare function animated_java:heiloang_aj/animations/pause_all
        #declare function animated_java:heiloang_aj/as_own_locator_entities
    # - アニメーション再生
        #declare function animated_java:heiloang_aj/animations/1_idle/tween
        #declare function animated_java:heiloang_aj/animations/2_0_common_cast_start/tween
        #declare function animated_java:heiloang_aj/animations/2_1_common_casting/tween
        #declare function animated_java:heiloang_aj/animations/2_2_common_invoke/tween
        #declare function animated_java:heiloang_aj/animations/3_0_hellfire_start/tween
        #declare function animated_java:heiloang_aj/animations/3_1_hellfire_shoot/tween
        #declare function animated_java:heiloang_aj/animations/3_2_hellfire_shoot_end/tween
        #declare function animated_java:heiloang_aj/animations/4_blizzard/tween
        #declare function animated_java:heiloang_aj/animations/5_1_move_start/tween
        #declare function animated_java:heiloang_aj/animations/5_2_move/tween
        #declare function animated_java:heiloang_aj/animations/6_sweep_breath/tween
        #declare function animated_java:heiloang_aj/animations/6_1_sweep_breath_mirror/tween
        #declare function animated_java:heiloang_aj/animations/8_1_move_flare/tween
        #declare function animated_java:heiloang_aj/animations/9_1_plamet/tween
        #declare function animated_java:heiloang_aj/animations/9_2_plamet_dive/tween
        #declare function animated_java:heiloang_aj/animations/10_1_power_breath/tween
        #declare function animated_java:heiloang_aj/animations/10_2_power_breath_continue_1/tween
        #declare function animated_java:heiloang_aj/animations/10_3_power_breath_continue_2/tween
        #declare function animated_java:heiloang_aj/animations/10_4_power_breath_continue_end/tween
        #declare function animated_java:heiloang_aj/animations/99_disaster_cast/tween
        #declare function animated_java:heiloang_aj/animations/99_disaster/tween
    # - 自動生成タグ
        #declare tag aj.data
        #declare tag aj.heiloang_aj.animation.1_idle.playing
        #declare tag aj.heiloang_aj.animation.2_0_common_cast_start.playing
        #declare tag aj.heiloang_aj.animation.2_1_common_casting.playing
        #declare tag aj.heiloang_aj.animation.2_2_common_invoke.playing
        #declare tag aj.heiloang_aj.animation.3_0_hellfire_start.playing
        #declare tag aj.heiloang_aj.animation.3_1_hellfire_shoot.playing
        #declare tag aj.heiloang_aj.animation.3_2_hellfire_shoot_end.playing
        #declare tag aj.heiloang_aj.animation.4_blizzard.playing
        #declare tag aj.heiloang_aj.animation.5_1_move_start.playing
        #declare tag aj.heiloang_aj.animation.5_2_move.playing
        #declare tag aj.heiloang_aj.animation.6_sweep_breath.playing
        #declare tag aj.heiloang_aj.animation.6_1_sweep_breath_mirror.playing
        #declare tag aj.heiloang_aj.animation.8_1_move_flare.playing
        #declare tag aj.heiloang_aj.animation.9_1_plamet.playing
        #declare tag aj.heiloang_aj.animation.9_2_plamet_dive.playing
        #declare tag aj.heiloang_aj.animation.10_1_power_breath.playing
        #declare tag aj.heiloang_aj.animation.10_2_power_breath_continue_1.playing
        #declare tag aj.heiloang_aj.animation.10_3_power_breath_continue_2.playing
        #declare tag aj.heiloang_aj.animation.10_4_power_breath_continue_end.playing
        #declare tag aj.heiloang_aj.animation.99_disaster_cast.playing
        #declare tag aj.heiloang_aj.animation.99_disaster.playing
    # - 自動生成スコア
        #declare objective aj.1_idle.frame
        #declare objective aj.2_0_common_cast_start.frame
        #declare objective aj.2_1_common_casting.frame
        #declare objective aj.2_2_common_invoke.frame
        #declare objective aj.3_0_hellfire_start.frame
        #declare objective aj.3_1_hellfire_shoot.frame
        #declare objective aj.3_2_hellfire_shoot_end.frame
        #declare objective aj.4_blizzard.frame
        #declare objective aj.5_1_move_start.frame
        #declare objective aj.5_2_move.frame
        #declare objective aj.6_sweep_breath.frame
        #declare objective aj.6_1_sweep_breath_mirror.frame
        #declare objective aj.8_1_move_flare.frame
        #declare objective aj.9_1_plamet.frame
        #declare objective aj.9_2_plamet_dive.frame
        #declare objective aj.10_1_power_breath.frame
        #declare objective aj.10_2_power_breath_continue_1.frame
        #declare objective aj.10_3_power_breath_continue_2.frame
        #declare objective aj.10_4_power_breath_continue_end.frame
        #declare objective aj.99_disaster_cast.frame
        #declare objective aj.99_disaster.frame
    # - 共通
    #declare tag BE.EntityRoot 自分自身（当たり判定）
    #declare tag BE.ModelRoot AJモデルのRootEntity
    #declare tag BE.CenterPosition 中心点
    #
    # - スキル
    #declare tag BE.Skill.Start 登場
    #declare tag BE.Skill.Hellfire ヘルファイア
    #declare tag BE.Skill.Adamant アダマントスパイク
    #declare tag BE.Skill.Blitz リヒトブリッツェン
    #declare tag BE.Skill.Ehd エンハンスドディザスター
    #declare tag BE.Skill.Move 移動
    #declare tag BE.Skill.MoveAfterEhd 移動
    #declare tag BE.Skill.Tornado 竜巻
    #declare tag BE.Skill.Sweep なぎはらいブレス
    #declare tag BE.Skill.Tempest テンペスト
    #declare tag BE.Skill.HeilDisaster ヘイルディザスター
    #declare tag BE.Skill.Flare フレア
    #declare tag BE.Skill.Plamet 急降下
    #declare tag BE.Skill.PowerBreath パワーブレス
    #declare tag BE.Skill.PowerBreath.C1 パワーブレス連発
    #declare tag BE.Skill.PowerBreath.C2 パワーブレス連発
    #declare tag BE.Skill.PowerBreath.End パワーブレス終了
    #
    # - 処理用
    #declare tag BE.MainTarget 主ターゲット
    #declare tag BE.AttackTarget 攻撃ターゲット
    #declare tag BE.HateTarget P4攻撃ターゲット
    #
    # - 一時
    #declare tag BE.Temp.Ground 角度決定用
    #declare tag BE.Temp.AttackRotation 角度決定用
    #declare tag BE.Temp.AttackPosition 位置決定用
    #declare tag BE.Temp.Adamant.SummonPosition アダマントスパイク召喚位置
    #declare tag BE.Temp.Blitz.SummonPosition リヒトブリッツェン召喚位置
    #declare tag BE.Temp.Blitz.PatternB リヒトブリッツェンパターン
    #declare tag BE.Temp.Flare.SummonPosition フレア召喚位置
    #declare tag BE.Temp.Flare.SummonPosition.Hard 追加フレア召喚位置
    #declare tag BE.Temp.Plamet.SummonPosition 急降下の追撃召喚位置
    #declare tag BE.Temp.Hit 攻撃ヒット
    #declare tag BE.Temp.Dummy ダミー
    #declare tag BE.Temp.MoveEnd 処理終了
    #
    # - オブジェクト
    #declare tag BE.Object オブジェクト共通タグ
    #declare tag 2121.Main テンペスト
    #declare tag 2121.StartAttack テンペスト移動終了
    #declare tag 2122.Main 火炎放射演出
