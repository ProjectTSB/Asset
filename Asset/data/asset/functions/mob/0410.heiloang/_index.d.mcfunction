#> asset:mob/0410.heiloang/_index.d
# @private

#> tag
# @within function asset:mob/0410.heiloang/**

# AnimatedJava処理(エラー対策)
    # 処理
        #declare function animated_java:heiloang_aj/summon
        #declare function animated_java:heiloang_aj/remove/all
    # アニメーション
        #declare function animated_java:heiloang_aj/animations/1_idle/play
    # 自動生成タグ
        #declare tag aj.heiloang_aj.locator.locator_head

# 共通
    #declare tag BE.EntityRoot 自分自身（当たり判定）
    #declare tag BE.ModelRoot AJモデルのRootEntity
    #declare tag BE.CenterPosition 中心点
