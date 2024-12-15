#> asset:mob/1004.tultaria/tick/base_move/skill_active
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/1004.tultaria/tick/**

## 炎
    # 魔法:空からメテオがいっぱい降ってくる
        execute if entity @s[tag=RW.Skill.Meteor] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/tick
    # 魔法: こちらの周囲へのランダム移動の後に射撃
        execute if entity @s[tag=RW.Skill.MoveShot] run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick
    # 物理: 複数の直線攻撃が発生するでかい斬撃
        execute if entity @s[tag=RW.Skill.BlazingCombo] run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/tick

## 水属性
    # 魔法:初手で放ってくる設置型攻撃
        execute if entity @s[tag=RW.Skill.SwordRain] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick
    # 魔法: 拡散誘導弾
        execute if entity @s[tag=RW.Skill.HomingShot] run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/tick
    # 物理: 剣展開→斬撃→剣飛ばし
        execute if entity @s[tag=RW.Skill.SpinSlash] run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick

## 雷属性
    # 魔法: 位置を覚えづらい雷がたくさん降ってくる
        execute if entity @s[tag=RW.Skill.Thunder] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick
    # 魔法: 偏差撃ちレーザー→自機狙いレーザー
        execute if entity @s[tag=RW.Skill.AimingLaser] run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/tick
    # 物理: 複数回突進→移動跡に電撃
        execute if entity @s[tag=RW.Skill.LightningStab] run function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

## 特殊
    # 魔法全属性: 超自機狙い弾幕
        execute if entity @s[tag=RW.Skill.Starfury] run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

## 未使用
    # 周囲をぐるぐる回りながら射撃
        # execute if entity @s[tag=RW.Skill.SpreadShot] run function asset:mob/1004.tultaria/tick/skill/spread_shot/tick
    # 水属性: 突進→移動跡をこまぎれにする
        # execute if entity @s[tag=RW.Skill.FreezingShred] run function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick
    # N-way弾？
        # execute if entity @s[tag=RW.Skill.SpreadShot,scores={RW.Phase=1..2}] run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick
        # execute if entity @s[tag=RW.Skill.SpreadShot,scores={RW.Phase=3..}] run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick_phase3

### 行動選択前スキル
#    # 追従射撃
#        execute if entity @s[tag=RW.MiniSkillChase] run function asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/1.tick
#    # 弾幕
#        execute if entity @s[tag=RW.MiniSkillBulletHell] run function asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/1.tick
#    # 拡散ショット
#        execute if entity @s[tag=RW.MiniSkillShot] run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/1.tick
#    # 拡散ショット
#        execute if entity @s[tag=RW.MiniSkillLaser] run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/1.tick
#
### 小技
#    # 移動射撃
#        execute if entity @s[tag=RW.Skill.Mini.MoveShot] run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/
#    # 拡散ショット
#        execute if entity @s[tag=RW.Skill.Mini.SpreadShot] run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/
#    # 近接攻撃
#        execute if entity @s[tag=RW.Skill.Mini.Slash] run function asset:mob/1004.tultaria/tick/skill/mini/slash/
#    # 引き撃ち
#        execute if entity @s[tag=RW.Skill.Mini.BackShot] run function asset:mob/1004.tultaria/tick/skill/mini/back_shot/
#    # ワープ攻撃
#        execute if entity @s[tag=RW.Skill.Mini.TeleportBeam] run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/
