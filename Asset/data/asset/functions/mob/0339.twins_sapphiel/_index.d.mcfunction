#> asset:mob/0339.twins_sapphiel/_index.d
# @private

#> tag
# @within function asset:mob/0339.twins_sapphiel/**


# Root用
    # 共通
        #declare tag 9E.Root 処理用中心点
        #declare tag 9E.Remove 死亡処理を行わずに消去する
        #declare tag 9E.Temp.Target.Aec.0 中心点が召喚する位置取得用AEC

# 共通
    #declare tag 9F.Root 処理用wither_skeleton
    #declare tag 9F.Init 初期化処理待機
    #declare tag 9F.ModelRoot 見た目用animated_javaモデル
    #declare tag 9F.ModelRoot.Target 紐づけ対象の見た目用animated_javaモデル

# 一時
    #declare tag 9F.Temp.This 自身に付与する
    #declare tag 9F.Temp.Target.Attack 攻撃対象
    #declare tag 9F.Temp.Target.Aec.0 攻撃地点決定に使用する
    #declare tag 9F.Temp.Target.Aec.1 攻撃地点決定に使用する
    #declare tag 9F.Temp.Target.Warp ワープポイントエンティティ
    #declare tag 9F.Temp.Target.Warp.0 ワープポイント取得に使用する
    #declare tag 9F.Temp.Target.Warp.1 ワープポイント取得に使用する
    #declare tag 9F.Temp.Target.Warp.2 ワープポイント取得に使用する

# 状態
    #declare tag 9F.State.Await Rootからの指示待ち
    #declare tag 9F.State.IsGuard ガード受け付け
    #declare tag 9F.State.IsDamage 怯み受け付け
    #declare tag 9F.State.Weapon.Hg ハンドガン所持

# スキル
    #declare tag 9F.Skill.Start 登場
    #declare tag 9F.Skill.Hg.Start ハンドガン持ち替え
    #declare tag 9F.Skill.Hg.Idle 待機
    #declare tag 9F.Skill.Hg.Guard ガード
    #declare tag 9F.Skill.Hg.Shot 射撃
    #declare tag 9F.Skill.Hg.Shot.MoveRight 側転射撃・右
    #declare tag 9F.Skill.Hg.Shot.MoveLeft 側転射撃・左
    #declare tag 9F.Skill.Hg.BackShot 引き撃ち
    #declare tag 9F.Skill.Hg.Riderkick ライダーキック
    #declare tag 9F.Skill.Hg.Spinkick 回し蹴り
    #declare tag 9F.Skill.Hg.KickCombo 3段蹴り
    #declare tag 9F.Skill.Hg.Punch 正拳突き
    #declare tag 9F.Skill.Hg.Lowkick 足払い
    #declare tag 9F.Skill.Hg.Stepshot 踏みつけ射撃
    #declare tag 9F.Skill.Hg.Warp.Shot ワープポイント射撃
    #declare tag 9F.Skill.Hg.Warp.Heeloff かかと落とし
    #declare tag 9F.Skill.Hg.Warp.Heelspin 2連回し蹴り
    #declare tag 9F.Skill.Hg.Fullburst.Start フルバースト
    #declare tag 9F.Skill.Hg.Fullburst.Main フルバースト
    #declare tag 9F.Skill.Hg.Fullburst.End フルバースト
    #declare tag 9F.Skill.Hg.Reload リロード
    #declare tag 9F.Skill.Hg.Step.Right ステップ・右
    #declare tag 9F.Skill.Hg.Step.Left ステップ・左
    #declare tag 9F.Skill.Hg.Step.Right2Left ステップ・右左
    #declare tag 9F.Skill.Hg.Step.Left2Right ステップ・左右
    #declare tag 9F.Skill.Hg.Step.Back ステップ・後

    #declare tag 9F.Skill.Lc.Start ランチャー持ち替え
    #declare tag 9F.Skill.Lc.Jump 構え
    #declare tag 9F.Skill.Lc.Aim 狙いをつける
    #declare tag 9F.Skill.Lc.Shot 発射

# シンクロスキル
    #declare tag 9F.Skill.Sync.Goalong 集合
    #declare tag 9F.Skill.Sync.Crossfire 交差攻撃
    #declare tag 9F.Skill.Sync.Crossfire.Pursuit 交差攻撃・追撃
    #declare tag 9F.Skill.Sync.Throw ぶん投げ