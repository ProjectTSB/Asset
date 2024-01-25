#> asset:mob/0338.corundum_twins/_index.d
# @private

#> tag
# @within function asset:mob/0338.corundum_twins/**

# Root用
    # 共通
        #declare tag 9E.Root 処理用entity
        #declare tag 9E.Init init待ち
        #declare tag 9E.Remove 死亡処理を行わずに消去する
        #declare tag 9E.TargetEnabled 紐づけ有効中
        #declare tag 9E.Marker.SpawnPoint 中心点
    # 一時タグ
        #declare tag 9E.Temp.Target.Aec.0 位置取得用AEC
    # 状態
        #declare tag 9E.State.Await 待機中
        #declare tag 9E.State.GetAwait.Sappihel サフィ待機中
        #declare tag 9E.State.GetAwait.Rubiel ルビィ待機中
    # スキル
        #declare tag 9E.Skill.GoAlong 集合
        #declare tag 9E.Skill.Crossfire 交差攻撃
            #declare tag 9E.Skill.Crossfire.Ruby.Hit 交差攻撃・ルビィ攻撃ヒット通知

# サフィ用
    # 共通
        #declare tag 9F.Remove 死亡処理を行わずに消去する
        #declare tag 9F.Root 処理用wither_skeleton
        #declare tag 9F.ModelRoot 見た目用animated_javaモデル
        #declare tag 9F.Target 紐づけ対象
    # 状態
        #declare tag 9F.State.Await 待機中

# ルビィ用
    # 共通
        #declare tag 9G.Remove 死亡処理を行わずに消去する
        #declare tag 9G.Root 処理用wither_skeleton
        #declare tag 9G.ModelRoot 見た目用animated_javaモデル
        #declare tag 9G.Target 紐づけ対象
    # 状態
        #declare tag 9G.State.Await 待機中
