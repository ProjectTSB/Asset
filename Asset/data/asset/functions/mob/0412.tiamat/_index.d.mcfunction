#> asset:mob/0412.tiamat/_index.d
# @private

#> tag
# @within function asset:mob/0412.tiamat/**
    # AnimatedJava処理(エラー対策)
    # - 処理
        #declare function animated_java:tiamat_aj/summon
        #declare function animated_java:tiamat_aj/remove/all
        #declare function animated_java:tiamat_aj/animations/pause_all
        #declare function animated_java:tiamat_aj/as_own_locator_entities
    # - アニメーション再生
        #declare function animated_java:tiamat_aj/animations/1_idle/tween
    # - 自動生成タグ
        #declare tag aj.data
        #declare tag aj.tiamat_aj.animation.1_idle.playing
    # - 自動生成スコア
        #declare objective aj.1_idle.frame
    # - 共通
    #declare tag BG.EntityRoot 自分自身（当たり判定）
    #declare tag BG.ModelRoot AJモデルのRootEntity
    #declare tag BE.CenterPosition 中心点(ヘイローンのものを使用)
    #
    # - スキル
    #declare tag BG.Skill.
    #
    # - 処理用
    #declare tag BG.MainTarget 主ターゲット
    #
    # - 一時
    #declare tag BG.Temp.Dummy
    #
    # - オブジェクト
    #declare tag BG.Object オブジェクト共通タグ
