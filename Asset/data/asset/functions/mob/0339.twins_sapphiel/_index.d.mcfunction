#> asset:mob/0339.twins_sapphiel/_index.d
# @private

#> tag
# @within function asset:mob/0339.twins_sapphiel/**


# Root用
    # 共通
        #declare tag 9E.Root 処理用中心点
        #declare tag 9E.Remove 死亡処理を行わずに消去する

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

# 状態
    #declare tag 9F.State.Await Rootからの指示待ち
    #declare tag 9F.State.Weapon.Hg ハンドガン所持

# スキル
    #declare tag 9F.Skill.Start 登場
    #declare tag 9F.Skill.Hg.Idle 待機
    #declare tag 9F.Skill.Hg.Shot 射撃
    #declare tag 9F.Skill.Hg.Shot.MoveRight 側転射撃・右
    #declare tag 9F.Skill.Hg.Shot.MoveLeft 側転射撃・左
    #declare tag 9F.Skill.Hg.BackShot 引き撃ち
    #declare tag 9F.Skill.Hg.Riderkick ライダーキック
    #declare tag 9F.Skill.Hg.Spinkick 回し蹴り
    #declare tag 9F.Skill.Hg.Punch 正拳突き
    #declare tag 9F.Skill.Hg.Lowkick 足払い
