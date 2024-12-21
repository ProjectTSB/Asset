#> asset:mob/0380.haruclaire_v3/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0380.haruclaire_v3/tick/

## 前半戦
# 移動
    execute if entity @s[tag=AK.Skill.Move] run function asset:mob/0380.haruclaire_v3/tick/event/move/

# アイスバレット
    execute if entity @s[tag=AK.Skill.IceBullet] run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/

# アイスウォール
    execute if entity @s[tag=AK.Skill.IceWall] run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall/

# アイスシージ
    execute if entity @s[tag=AK.Skill.IceSiege] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/

# アイススピア
    execute if entity @s[tag=AK.Skill.IceSpear] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/
