#> asset:mob/0456.gargo_ex_machina/_index.d
# @private

#> tag
# @within function asset:mob/0456.gargo_ex_machina/**
    # - 共通
    #declare tag CO.EntityRoot 自分自身
    #declare tag CO.ModelRoot AJモデルのRootEntity
    #declare tag CO.Hitbox 当たり判定
    #declare tag CO.CenterPosition 中心点
    # - スキル
    #declare tag CO.Skill.Activate 起動
    # - オブジェクト用
    #declare tag CO.Object
    #declare tag CO.Shadow
    # - 自動生成
    #declare function animated_java:gargo_ex_machina/summon
    #declare function animated_java:gargo_ex_machina/animations/pause_all
    #declare function animated_java:gargo_ex_machina/animations/idle/tween
    #declare function animated_java:gargo_ex_machina/animations/activation/tween
    #declare function animated_java:gargo_ex_machina/animations/move_to_field_fast/tween
    #declare function animated_java:gargo_ex_machina/remove/all
