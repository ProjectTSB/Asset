#> asset:mob/0339.twins_sapphiel/_index.d
# @private

#> AJ function
# @within function asset:mob/0339.twins_sapphiel/**
    #declare function animated_java:twins_sapphiel/animations/0_0_start/tween
    #declare function animated_java:twins_sapphiel/animations/1_0_hg_start/tween
    #declare function animated_java:twins_sapphiel/animations/2_0_hg_idle/tween
    #declare function animated_java:twins_sapphiel/animations/2_1_hg_guard/tween
    #declare function animated_java:twins_sapphiel/animations/3_0_hg_shot_0/tween
    #declare function animated_java:twins_sapphiel/animations/3_1_hg_shot_move_right/tween
    #declare function animated_java:twins_sapphiel/animations/3_1_hg_shot_move_left/tween
    #declare function animated_java:twins_sapphiel/animations/4_0_hg_backstep_shot/tween
    #declare function animated_java:twins_sapphiel/animations/5_0_hg_riderkick/tween
    #declare function animated_java:twins_sapphiel/animations/5_1_hg_spinkick/tween
    #declare function animated_java:twins_sapphiel/animations/5_2_hg_kickcombo/tween
    #declare function animated_java:twins_sapphiel/animations/6_0_hg_punch/tween
    #declare function animated_java:twins_sapphiel/animations/6_1_hg_lowkick/tween
    #declare function animated_java:twins_sapphiel/animations/6_2_hg_stepshot/tween
    #declare function animated_java:twins_sapphiel/animations/7_0_hg_warpshot/tween
    #declare function animated_java:twins_sapphiel/animations/7_1_hg_heeloff/tween
    #declare function animated_java:twins_sapphiel/animations/7_2_hg_heelspin/tween
    #declare function animated_java:twins_sapphiel/animations/8_0_hg_fullburst_start/tween
    #declare function animated_java:twins_sapphiel/animations/8_1_hg_fullburst_shot/tween
    #declare function animated_java:twins_sapphiel/animations/8_2_hg_fullburst_end/tween
    #declare function animated_java:twins_sapphiel/animations/9_0_hg_reload/tween
    #declare function animated_java:twins_sapphiel/animations/10_0_hg_move_right/tween
    #declare function animated_java:twins_sapphiel/animations/10_1_hg_move_left/tween
    #declare function animated_java:twins_sapphiel/animations/10_2_hg_move_back/tween
    #declare function animated_java:twins_sapphiel/animations/12_0_sg_idle/tween
    #declare function animated_java:twins_sapphiel/animations/20_0_lc_start/tween
    #declare function animated_java:twins_sapphiel/animations/21_0_lc_shot_jump/tween
    #declare function animated_java:twins_sapphiel/animations/21_1_lc_shot_aim/tween
    #declare function animated_java:twins_sapphiel/animations/21_2_lc_shot_shot/tween
    #declare function animated_java:twins_sapphiel/animations/30_0_sync_goalong/tween
    #declare function animated_java:twins_sapphiel/animations/31_0_sync_crossfire_0/tween
    #declare function animated_java:twins_sapphiel/animations/31_1_sync_crossfire_1/tween
    #declare function animated_java:twins_sapphiel/animations/32_0_sync_throwattack_0/tween
    #declare function animated_java:twins_sapphiel/animations/32_0_sync_throwattack_2/tween
    #declare function animated_java:twins_sapphiel/animations/40_0_damage/tween
    #declare function animated_java:twins_sapphiel/animations/40_1_damage_down/tween
    #declare function animated_java:twins_sapphiel/animations/40_2_damage_end/tween
    #declare function animated_java:twins_sapphiel/animations/40_3_damage_stun_start/tween
    #declare function animated_java:twins_sapphiel/animations/40_4_damage_stun/tween
    #declare function animated_java:twins_sapphiel/animations/41_0_cover/tween
    #declare function animated_java:twins_sapphiel/summon
    #declare function animated_java:twins_sapphiel/animations/pause_all

#> ルート用 - 共通
# @within function asset:mob/0339.twins_sapphiel/**
    #declare tag 9E.Root 処理用中心点
    #declare tag 9E.Remove 死亡処理を行わずに消去する
    #declare tag 9E.Temp.Target.Aec.0 中心点が召喚する位置取得用AEC
    #declare tag 9E.Marker.SpawnPoint 中心点

#> 共通
# @within function asset:mob/0339.twins_sapphiel/**
    #declare tag 9F.Root 処理用wither_skeleton
    #declare tag 9F.Init 初期化処理待機
    #declare tag 9F.ModelRoot 見た目用animated_javaモデル
    #declare tag 9F.ModelRoot.Target 紐づけ対象の見た目用animated_javaモデル

#> 一時
# @within function asset:mob/0339.twins_sapphiel/**
    #declare tag 9F.Temp.This 自身に付与する
    #declare tag 9F.Temp.Target.Attack 攻撃対象
    #declare tag 9F.Temp.Target.Aec.0 攻撃地点決定に使用する
    #declare tag 9F.Temp.Target.Aec.1 攻撃地点決定に使用する
    #declare tag 9F.Temp.Target.Warp ワープポイントエンティティ
    #declare tag 9F.Temp.Target.Warp.0 ワープポイント取得に使用する
    #declare tag 9F.Temp.Target.Warp.1 ワープポイント取得に使用する
    #declare tag 9F.Temp.Target.Warp.2 ワープポイント取得に使用する
    #declare tag 9F.Temp.Animated このtickすでにアニメーションを決定した

#> 状態
# @within function asset:mob/0339.twins_sapphiel/**
    #declare tag 9F.State.Await Rootからの指示待ち
    #declare tag 9F.State.IsGuard ガード受け付け
    #declare tag 9F.State.IsReload リロード中
    #declare tag 9F.State.IsDamage 怯み受け付け
    #declare tag 9F.State.Weapon.Hg ハンドガン所持
    #declare tag 9F.State.Weapon.Sg ショットガン所持

#> スキル
# @within function asset:mob/0339.twins_sapphiel/**
    #declare tag 9F.Skill.Start 登場
    #declare tag 9F.Skill.Damage.Start 怯み・開始
    #declare tag 9F.Skill.Damage.Down 怯み・ダウン中
    #declare tag 9F.Skill.Damage.End 怯み・終了
    #declare tag 9F.Skill.Damage.Stun.Start 怯み・スタン開始
    #declare tag 9F.Skill.Damage.Stun 怯み・スタン
    #declare tag 9F.Skill.Cover 怯みかばい攻撃
    #
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
    #
    #declare tag 9F.Skill.Lc.Start ランチャー持ち替え
    #declare tag 9F.Skill.Lc.Jump 構え
    #declare tag 9F.Skill.Lc.Aim 狙いをつける
    #declare tag 9F.Skill.Lc.Shot 発射
    #

#> シンクロスキル
# @within function asset:mob/0339.twins_sapphiel/**
    #declare tag 9F.Skill.Sync.Goalong 集合
    #declare tag 9F.Skill.Sync.Crossfire 交差攻撃
    #declare tag 9F.Skill.Sync.Crossfire.Pursuit 交差攻撃・追撃
    #declare tag 9F.Skill.Sync.Throw ぶん投げ

#> その他
# @within function asset:mob/0339.twins_sapphiel/**
    #declare tag 9F.Remove
    #declare objective 9E.Uid
