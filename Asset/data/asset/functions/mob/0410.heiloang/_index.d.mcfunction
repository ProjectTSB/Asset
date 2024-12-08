#> asset:mob/0410.heiloang/_index.d
# @private

#> tag
# @within function asset:mob/0410.heiloang/**

# AnimatedJava処理(エラー対策)
    # 処理
        #declare function animated_java:heiloang_aj/summon
        #declare function animated_java:heiloang_aj/remove/all
        #declare function animated_java:heiloang_aj/animations/pause_all
    # アニメーション再生
        #declare function animated_java:heiloang_aj/animations/1_idle/tween_play
        #declare function animated_java:heiloang_aj/animations/2_0_common_cast_start/tween_play
        #declare function animated_java:heiloang_aj/animations/2_1_common_casting/tween_play
        #declare function animated_java:heiloang_aj/animations/2_2_common_invoke/tween_play
        #declare function animated_java:heiloang_aj/animations/3_0_hellfire_start/tween_play
        #declare function animated_java:heiloang_aj/animations/3_1_hellfire_shoot/tween_play
        #declare function animated_java:heiloang_aj/animations/4_blizzard/tween_play
        #declare function animated_java:heiloang_aj/animations/5_1_move_start/tween_play
        #declare function animated_java:heiloang_aj/animations/5_2_move/tween_play
        #declare function animated_java:heiloang_aj/animations/6_sweep_breath/tween_play
    # アニメーションタグ
        #declare tag aj.heiloang_aj.animation.1_idle
    # 自動生成タグ
        #declare tag aj.heiloang_aj.locator.locator_head

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

# 処理用
    #declare tag BE.MainTarget 主ターゲット
    #declare tag BE.AttackTarget 攻撃ターゲット

# 一時
    #declare tag BE.Temp.Ground 角度決定用
    #declare tag BE.Temp.AttackRotation 角度決定用
    #declare tag BE.Temp.AttackPosition 位置決定用
    #declare tag BE.Temp.Adamant.SummonPosition アダマントスパイク召喚位置
    #declare tag BE.Temp.Hit 攻撃ヒット
    #declare tag BE.Temp.Dummy ダミー
