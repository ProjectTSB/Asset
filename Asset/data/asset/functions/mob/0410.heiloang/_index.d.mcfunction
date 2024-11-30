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
        #declare function animated_java:heiloang_aj/animations/3_0_hellfire_start/tween_play
    # アニメーションタグ
        #declare tag aj.heiloang_aj.animation.1_idle
    # 自動生成タグ
        #declare tag aj.heiloang_aj.locator.locator_head

# 共通
    #declare tag BE.EntityRoot 自分自身（当たり判定）
    #declare tag BE.ModelRoot AJモデルのRootEntity
    #declare tag BE.CenterPosition 中心点

# イベント
    #declare tag BE.Skill.Hellfire ヘルファイア

# 処理用
    #declare tag BE.MainTarget 主ターゲット
    #declare tag BE.AttackTarget 攻撃ターゲット

# 一時
    #declare tag BE.Temp.AttackRotation 角度決定用
