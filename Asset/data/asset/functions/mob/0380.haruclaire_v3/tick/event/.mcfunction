#> asset:mob/0380.haruclaire_v3/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0380.haruclaire_v3/tick/

## 前半戦
# アイスバレット
    execute if entity @s[tag=AK.Skill.IceBullet] run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/

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

# 超アイスバレット
    execute if entity @s[tag=AK.Skill.SuperIceBullet] run function asset:mob/0380.haruclaire_v3/tick/event/super_ice_bullet/

# アイスレーザー
    execute if entity @s[tag=AK.Skill.IceLaser] run function asset:mob/0380.haruclaire_v3/tick/event/ice_laser/
