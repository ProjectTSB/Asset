#> asset:mob/0340.twins_rubiel/_index.d
# @private

#> tag
# @within function asset:mob/0340.twins_rubiel/**

# Root用
    # 共通
        #declare tag 9E.Root 処理用中心点
        #declare tag 9E.Remove 死亡処理を行わずに消去する

# 共通
    #declare tag 9G.Root 処理用wither_skeleton
    #declare tag 9G.Init 初期化処理待機
    #declare tag 9G.ModelRoot 見た目用animated_javaモデル
    #declare tag 9G.ModelRoot.Target 紐づけ対象の見た目用animated_javaモデル

# 状態
    #declare tag 9G.State.Await Rootからの指示待ち
    #declare tag 9G.State.Weapon.Kt 刀所持

# スキル
    #declare tag 9G.Skill.Kt.Idle 刀待機
