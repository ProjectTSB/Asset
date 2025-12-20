#> asset:mob/0338.corundum_twins/_index.d
# @private

#> AJ自動生成
# @within function asset:mob/0338.corundum_twins/**
    #declare function animated_java:twins_sapphiel/remove/this
    #declare function animated_java:twins_rubiel/remove/this

#> Root用 - 共通
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9E.Root 処理用entity
    #declare tag 9E.Init init待ち
    #declare tag 9E.Remove 死亡処理を行わずに消去する
    #declare tag 9E.TargetEnabled 紐づけ有効中
    #declare tag 9E.Marker.SpawnPoint 中心点
    #declare tag 9E.Object オブジェクト共通タグ、ダウン演出は自分で消えないとbarrierを消せないので削除しない

#> Root用 - 一時タグ
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9E.Temp.Target.Aec.0 位置取得用AEC

#> Root用 - 状態
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9E.State.Await 待機中
    #declare tag 9E.State.GetAwait.Sapphiel サフィ待機中
    #declare tag 9E.State.GetAwait.Rubiel ルビィ待機中
    #declare tag 9E.State.Phase.Sapphiel サフィに指示を出す
    #declare tag 9E.State.Phase.Rubiel ルビィに指示を出す
    #declare tag 9E.State.Phase.Sync.Reserve シンクロ攻撃予約
    #declare tag 9E.State.Phase.Sync シンクロ攻撃中

#> スキル
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9E.Skill.GoAlong 集合
    #declare tag 9E.Skill.Crossfire 交差攻撃
    #declare tag 9E.Skill.Crossfire.Ruby.Hit 交差攻撃・ルビィ攻撃ヒット通知
    #declare tag 9E.Skill.Throw ぶん投げ
    #declare tag 9E.Skill.Launcher ランチャー
    #declare tag 9E.Skill.Rubiel.Cover ルビィ怯みかばい攻撃
    #declare tag 9E.Skill.Sapphiel.Cover サフィ怯みかばい攻撃
    #declare tag 9E.Skill.Damage 同時ひるみ
    #declare tag 9E.Skill.Stun スタン開始

#> サフィ用 - 共通
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9F.Remove 死亡処理を行わずに消去する
    #declare tag 9F.Root 処理用wither_skeleton
    #declare tag 9F.ModelRoot 見た目用animated_javaモデル
    #declare tag 9F.Target 紐づけ対象

#> サフィ用 - 状態
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9F.State.Await 待機中
    #declare tag 9F.State.IsReload リロード中
    #declare tag 9F.Skill.Damage 怯み中

#> ルビィ用 - 共通
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9G.Remove 死亡処理を行わずに消去する
    #declare tag 9G.Root 処理用wither_skeleton
    #declare tag 9G.ModelRoot 見た目用animated_javaモデル
    #declare tag 9G.Target 紐づけ対象

#> ルビィ用 - 状態
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9G.State.Await 待機中
    #declare tag 9G.Skill.Damage 怯み中
