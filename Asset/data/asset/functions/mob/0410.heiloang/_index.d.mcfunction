#> asset:mob/0410.heiloang/_index.d
# @private

#> tag
# @within function asset:mob/0410.heiloang/**

# AnimatedJava処理(エラー対策)
    # 処理
        #declare function animated_java:heiloang_aj/summon
        #declare function animated_java:heiloang_aj/remove/all
        #declare function animated_java:heiloang_aj/animations/pause_all
        #declare function animated_java:heiloang_aj/as_own_locator_entities
    # アニメーション再生
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
    # アニメーションタグ
    # 自動生成タグ
        #declare tag aj.data

# 共通
    #declare tag BE.EntityRoot 自分自身（当たり判定）
    #declare tag BE.ModelRoot AJモデルのRootEntity
    #declare tag BE.CenterPosition 中心点

# スキル
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

# 処理用
    #declare tag BE.MainTarget 主ターゲット
    #declare tag BE.AttackTarget 攻撃ターゲット
    #declare tag BE.HateTarget P4攻撃ターゲット

# 一時
    #declare tag BE.Temp.Ground 角度決定用
    #declare tag BE.Temp.AttackRotation 角度決定用
    #declare tag BE.Temp.AttackPosition 位置決定用
    #declare tag BE.Temp.Adamant.SummonPosition アダマントスパイク召喚位置
    #declare tag BE.Temp.Flare.SummonPosition フレア召喚位置
    #declare tag BE.Temp.Hit 攻撃ヒット
    #declare tag BE.Temp.Dummy ダミー
    #declare tag BE.Temp.MoveEnd 処理終了

# オブジェクト
    #declare tag 2121.Main テンペスト
    #declare tag 2122.Main 火炎放射演出
