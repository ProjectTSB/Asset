#> asset:mob/0380.haruclaire_v3/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0380.haruclaire_v3/tick/

# 後半戦移動
    execute if entity @s[tag=AK.Skill.MoveS] run return run function asset:mob/0380.haruclaire_v3/tick/event/second_move/

# 登場
    execute if entity @s[tag=AK.Skill.Start] run function asset:mob/0380.haruclaire_v3/tick/event/start/

## 前半戦
# アイスバレット・エトワール
    execute if entity @s[tag=AK.Skill.IceBullet] run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/

# アイスバレット・ソレイユ
    execute if entity @s[tag=AK.Skill.SuperIceBullet] run function asset:mob/0380.haruclaire_v3/tick/event/super_ice_bullet/

# アイスウォール
    execute if entity @s[tag=AK.Skill.IceWall] run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall/

# アイスシージ
    execute if entity @s[tag=AK.Skill.IceSiege] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/

# アイススピア
    execute if entity @s[tag=AK.Skill.IceSpear] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/

# 移動
    execute if entity @s[tag=AK.Skill.Move] run function asset:mob/0380.haruclaire_v3/tick/event/move/
# ぶんぶんぶん殴り
    execute if entity @s[tag=AK.Skill.Punch] run function asset:mob/0380.haruclaire_v3/tick/event/punch/

# アイスレーザー
    execute if entity @s[tag=AK.Skill.IceLaser] run function asset:mob/0380.haruclaire_v3/tick/event/ice_laser/

# アイスピラー
    execute if entity @s[tag=AK.Skill.IcePillar] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/

## 後半戦
# アイシクルブレード
    execute if entity @s[tag=AK.Skill.Blade] run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/

# ジャイアントブレード
    execute if entity @s[tag=AK.Skill.Giant,tag=!AK.Skill.Giant.Short] run function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/
    execute if entity @s[tag=AK.Skill.Giant,tag=AK.Skill.Giant.Short] run function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/short

# アイスバレット・デュオ
    execute if entity @s[tag=AK.Skill.IceBulletDuo] run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/

# 押しつぶし
    execute if entity @s[tag=AK.Skill.Press] run function asset:mob/0380.haruclaire_v3/tick/event/press/

# アイスウォール
    execute if entity @s[tag=AK.Skill.IceWallDuo] run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/

# アイスピラー
    execute if entity @s[tag=AK.Skill.IcePillarDuo] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar_duo/

# アイススピア
    execute if entity @s[tag=AK.Skill.IceSpearDuo] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/

# アイススピナー
    execute if entity @s[tag=AK.Skill.IceSpinner] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/


## アイスクリメーション
# お披露目
    execute if entity @s[tag=AK.Skill.IceCremation.First] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/

# 連続突進
    execute if entity @s[tag=AK.Skill.IceCremation.Dash] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/

# 円範囲4体
    execute if entity @s[tag=AK.Skill.IceCremation.FourCircle] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_four_circle/

# 交差
    execute if entity @s[tag=AK.Skill.IceCremation.Cross] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/

# 円+直線
    execute if entity @s[tag=AK.Skill.IceCremation.CircleLine] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_circle_line/

# ハトクレア召喚
    execute if entity @s[tag=AK.Skill.SummonHato] run function asset:mob/0380.haruclaire_v3/tick/event/summon_hatoclaire/
