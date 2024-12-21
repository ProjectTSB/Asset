#> asset:mob/0380.haruclaire_v3/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0380.haruclaire_v3/tick/

## 前半戦
# アイスバレット
    execute if entity @s[tag=AK.Skill.IceBullet] run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/
