#> asset:mob/0411.behemoth/_index.d
# @private

#> tag
# @within function asset:mob/0411.behemoth/**
    #declare
    #
    # AnimatedJava処理(エラー対策)
    #
    # - 処理
    #declare function animated_java:behemoth_aj/summon
    #declare function animated_java:behemoth_aj/remove/all
    #declare function animated_java:behemoth_aj/animations/pause_all
    #declare function animated_java:behemoth_aj/as_own_locator_entities
    #
    # - アニメーション再生
    #declare function animated_java:behemoth_aj/animations/1_idle/tween
    # - 自動生成タグ
    #declare tag aj.data
    #declare tag aj.behemoth_aj.animation.1_idle.playing
    # - 自動生成スコア
    #declare objective aj.1_idle.frame
    # - 共通
    #declare tag BF.EntityRoot 自分自身（当たり判定）
    #declare tag BF.ModelRoot AJモデルのRootEntity
    #declare tag BE.CenterPosition 中心点(ヘイローンのものを使用)
    #
    # - スキル
    #declare tag BF.Skill.
    #
    # - 処理用
    #declare tag BF.MainTarget 主ターゲット
    #
    # - 一時
    #declare tag BF.Temp.Dummy
    #
    # - オブジェクト
    #declare tag BF.Object オブジェクト共通タグ
