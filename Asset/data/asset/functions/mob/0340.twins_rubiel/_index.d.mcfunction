#> asset:mob/0340.twins_rubiel/_index.d
# @private

#> tag
# @within function asset:mob/0340.twins_rubiel/**

# Root用
    # 共通
        #declare tag 9E.Root 処理用中心点
        #declare tag 9E.Remove 死亡処理を行わずに消去する
        #declare tag 9E.Temp.Target.Aec.0 中心点が召喚する位置取得用AEC

# 共通
    #declare tag 9G.Root 処理用wither_skeleton
    #declare tag 9G.Init 初期化処理待機
    #declare tag 9G.ModelRoot 見た目用animated_javaモデル
    #declare tag 9G.ModelRoot.Target 紐づけ対象の見た目用animated_javaモデル

# 一時
    #declare tag 9G.Temp.This 自身に付与する
    #declare tag 9G.Temp.Target.Attack 攻撃対象
    #declare tag 9G.Temp.Target.Attack.Sub 攻撃対象サブ
    #declare tag 9G.Temp.Target.Aec.0 攻撃地点決定に使用する
    #declare tag 9G.Temp.Target.Aec.1 攻撃地点決定に使用する
    #declare tag 9G.Temp.Target.Warp ワープポイントエンティティ
    #declare tag 9G.Temp.Target.Warp.0 ワープポイント取得に使用する
    #declare tag 9G.Temp.Target.Warp.1 ワープポイント取得に使用する
    #declare tag 9G.Temp.Target.Warp.2 ワープポイント取得に使用する
    #declare tag 9G.Temp.Target.JumpAvoid ジャンプして攻撃を回避したプレイヤーを取得する
    #declare tag 9G.Temp.Animated このtickすでにアニメーションを決定した
    #declare tag 9G.Temp.Animated.Draw このtickすでにアニメーションを決定した・居合斬り

# 状態
    #declare tag 9G.State.Await Rootからの指示待ち
    #declare tag 9G.State.IsGuard ガード受け付け
    #declare tag 9G.State.IsDamage 怯み受け付け
    #declare tag 9G.State.Weapon.Kt 刀所持
    #declare tag 9G.State.Weapon.Sc 鎌所持
    #declare tag 9G.State.Weapon.Gs 大剣所持
    #declare tag 9G.State.Damage.Accept 怯み受け付け中

# スキル
    #declare tag 9G.Skill.Start 登場
    #declare tag 9G.Skill.Damage.Start 怯み・開始
    #declare tag 9G.Skill.Damage.Down 怯み・ダウン中
    #declare tag 9G.Skill.Damage.End 怯み・終了
    #declare tag 9G.Skill.Damage.Stun.Start 怯み・スタン開始
    #declare tag 9G.Skill.Damage.Stun 怯み・スタン中
    #declare tag 9G.Skill.Cover 怯みかばい攻撃

    #declare tag 9G.Skill.Kt.Start 刀持ち替え
    #declare tag 9G.Skill.Kt.Idle 刀待機
    #declare tag 9G.Skill.Kt.Guard 刀ガード
    #declare tag 9G.Skill.Kt.Moveslash 移動斬り
    #declare tag 9G.Skill.Kt.MoveToSpear 移動突き
    #declare tag 9G.Skill.Kt.Damage.Spear 移動突き・怯み
    #declare tag 9G.Skill.Kt.VacuSlash 真空斬り
    #declare tag 9G.Skill.Kt.Doubleslash 斬り下がり
    #declare tag 9G.Skill.Kt.Warp ワープ連撃
    #declare tag 9G.Skill.Kt.Sheathe 納刀
    #declare tag 9G.Skill.Kt.Sheathe.Wait.Jumonji 納刀待機・十文字
    #declare tag 9G.Skill.Kt.Draw.Jumonji 抜刀・十文字斬り
    #declare tag 9G.Skill.Kt.Damage.Draw 居合斬り・怯み
    #declare tag 9G.Skill.Kt.Sheathe.Counter カウンター居合斬り
    #declare tag 9G.Skill.Kt.JumpSlash 飛び込み斬り
    #declare tag 9G.Skill.Kt.Horizon 水平斬り
    #declare tag 9G.Skill.Kt.Horizon.Double 二刀流水平斬り
    #declare tag 9G.Skill.Kt.DashAttack 二刀流縦回転斬り
    #declare tag 9G.Skill.Kt.BackJump ナイフ投げ
    #declare tag 9G.Skill.Kt.Throw.Start 掴み
    #declare tag 9G.Skill.Kt.Throw 大外刈り

    #declare tag 9G.Skill.Sc.Start 鎌持ち替え
    #declare tag 9G.Skill.Sc.Idle 鎌待機
    #declare tag 9G.Skill.Sc.Warp ワープ連撃

# シンクロスキル
    #declare tag 9G.Skill.Sync.Goalong 集合
    #declare tag 9G.Skill.Sync.Crossfire 交差攻撃
    #declare tag 9G.Skill.Sync.Crossfire.Upper 交差攻撃・斬り上げ
    #declare tag 9G.Skill.Sync.Throw ぶん投げ
