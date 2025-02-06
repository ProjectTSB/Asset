#> asset:mob/0338.corundum_twins/_index.d
# @private

#> Twins - General
# @within function
#   asset:mob/0338.corundum_twins/**
#   asset:mob/0339.twins_sapphiel/**
#   asset:mob/0340.twins_rubiel/**
    #declare tag 9E.Root 処理用entity
    #declare tag 9E.Init init待ち
    #declare tag 9E.Remove 死亡処理を行わずに消去する
    #declare tag 9E.TargetEnabled 紐づけ有効中
    #declare tag 9E.Marker.SpawnPoint 中心点
    #declare tag 9E.Object オブジェクト共通タグ、ダウン演出は自分で消えないとbarrierを消せないので削除しない
    #declare objective 9E.Uid

#> Twins - Temp
# @within function
#   asset:mob/0338.corundum_twins/**
#   asset:mob/0339.twins_sapphiel/**
#   asset:mob/0340.twins_rubiel/**
    #declare tag 9E.Temp.Target.Aec.0 位置取得用AEC

#> Twins - State
# @within function asset:mob/0338.corundum_twins/**
    #declare tag 9E.State.Await 待機中
    #declare tag 9E.State.GetAwait.Sapphiel サフィ待機中
    #declare tag 9E.State.GetAwait.Rubiel ルビィ待機中
    #declare tag 9E.State.Phase.Sapphiel サフィに指示を出す
    #declare tag 9E.State.Phase.Rubiel ルビィに指示を出す
    #declare tag 9E.State.Phase.Sync.Reserve シンクロ攻撃予約
    #declare tag 9E.State.Phase.Sync シンクロ攻撃中

#> Twins - Skill
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

#> Twins - Sapphiel
# @within function asset:mob/0338.corundum_twins/**
    #declare function animated_java:twins_sapphiel/remove/this
    #declare tag 9F.Root 処理用wither_skeleton
    #declare tag 9F.ModelRoot 見た目用animated_javaモデル
    #declare tag 9F.Init 初期化処理待機
    #declare tag 9F.Remove 死亡処理を行わずに消去する
    #declare tag 9F.Target 紐づけ対象
    #declare tag 9F.Temp.Target.Aec.0 攻撃地点決定に使用する
    #declare tag 9F.Temp.Target.Aec.1 攻撃地点決定に使用する
    #declare tag 9F.State.Await 待機中
    #declare tag 9F.State.IsReload リロード中
    #declare tag 9F.Skill.Damage 怯み中
    #declare tag 9F.Skill.Damage.Down 怯み・ダウン中
    #declare tag 9F.Skill.Damage.End 怯み・終了

#> Twins - Rubiel
# @within function asset:mob/0338.corundum_twins/**
    #declare function animated_java:twins_rubiel/remove/this
    #declare tag 9G.Root 処理用wither_skeleton
    #declare tag 9G.ModelRoot 見た目用animated_javaモデル
    #declare tag 9G.Init 初期化待機処理
    #declare tag 9G.Remove 死亡処理を行わずに消去する
    #declare tag 9G.Target 紐づけ対象
    #declare tag 9G.Temp.Target.Aec.0 攻撃地点決定に使用する
    #declare tag 9G.Temp.Target.Aec.1 攻撃地点決定に使用する
    #declare tag 9G.State.Await 待機中
    #declare tag 9G.Skill.Damage 怯み中
    #declare tag 9G.Skill.Damage.Down 怯み・ダウン中
    #declare tag 9G.Skill.Damage.End 怯み・終了
