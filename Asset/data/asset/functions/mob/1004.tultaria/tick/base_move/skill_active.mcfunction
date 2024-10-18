#> asset:mob/1004.tultaria/tick/base_move/skill_active
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/1004.tultaria/tick/**

## 未使用
    # 近接
        execute if entity @s[tag=RW.Skill.Melee] run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/1.tick
    # 召喚
        execute if entity @s[tag=RW.Skill.Summon] run function asset:mob/1004.tultaria/tick/skill/7.star_summon/1.star_summon
    # 火属性: 追跡→巨大な斬撃を放つ
        execute if entity @s[tag=RW.Skill.BlazingSlash] run function asset:mob/1004.tultaria/tick/skill/blazing_slash/tick

## 炎
    # 魔法:空からメテオがいっぱい降ってくる
        execute if entity @s[tag=RW.Skill.Meteor] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/tick
    # 物理/魔法: 
## 魔法技
    # 火属性: 低速誘導弾を発射
        execute if entity @s[tag=RW.Skill.Hellfire] run function asset:mob/1004.tultaria/tick/skill/fire/hell_fire/tick
    # 水属性: 誘導弾を複数放つ
        execute if entity @s[tag=RW.Skill.AncientLight] run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick
    # 雷属性: 位置を覚えづらい雷がたくさん降ってくる
        execute if entity @s[tag=RW.Skill.Thunder] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick
    # 無属性: 移動
        execute if entity @s[tag=RW.Skill.SpreadShot] run function asset:mob/1004.tultaria/tick/skill/spread_shot/tick
    # 無属性: こちらに並びつつ射撃
        execute if entity @s[tag=RW.Skill.MoveShot] run function asset:mob/1004.tultaria/tick/skill/move_shot/tick
    # 無属性: 最悪偏差撃ちレーザー
        execute if entity @s[tag=RW.Skill.AimingLaser] run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/tick
    # 水属性: 持続攻撃の雨
        execute if entity @s[tag=RW.Skill.SwordRain] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick
    # 水属性: ホーミングショット
        execute if entity @s[tag=RW.Skill.HomingShot] run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/tick
## 物理技
    # 火属性: 追いかけてきながらコンボ攻撃
        execute if entity @s[tag=RW.Skill.BlazingCombo] run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick
    # 水属性: 突進→移動跡をこまぎれにする
        execute if entity @s[tag=RW.Skill.FreezingShred] run function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick
    # 雷属性: 突進を複数回したあと、移動後に判定が発生
        execute if entity @s[tag=RW.Skill.LightningStab] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

## ちょっと特殊な技
    # 流星
        execute if entity @s[tag=RW.Skill.Starfury] run function asset:mob/1004.tultaria/tick/skill/6.starfury_attack/1.tick
    # ショット
        #execute if entity @s[tag=RW.Skill.SpreadShot,scores={RW.Phase=1..2}] run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick
        #execute if entity @s[tag=RW.Skill.SpreadShot,scores={RW.Phase=3..}] run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick_phase3

## 行動選択前スキル
    # 追従射撃
        execute if entity @s[tag=RW.MiniSkillChase] run function asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/1.tick
    # 弾幕
        execute if entity @s[tag=RW.MiniSkillBulletHell] run function asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/1.tick
    # 拡散ショット
        execute if entity @s[tag=RW.MiniSkillShot] run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/1.tick
    # 拡散ショット
        execute if entity @s[tag=RW.MiniSkillLaser] run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/1.tick

## 小技
    # 移動射撃
        execute if entity @s[tag=RW.Skill.Mini.MoveShot] run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/
    # 拡散ショット
        execute if entity @s[tag=RW.Skill.Mini.SpreadShot] run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/
    # 近接攻撃
        execute if entity @s[tag=RW.Skill.Mini.Slash] run function asset:mob/1004.tultaria/tick/skill/mini/slash/
    # 引き撃ち
        execute if entity @s[tag=RW.Skill.Mini.BackShot] run function asset:mob/1004.tultaria/tick/skill/mini/back_shot/
    # ワープ攻撃
        execute if entity @s[tag=RW.Skill.Mini.TeleportBeam] run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/
