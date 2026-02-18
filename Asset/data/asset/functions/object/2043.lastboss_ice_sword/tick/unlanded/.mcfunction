#> asset:object/2043.lastboss_ice_sword/tick/unlanded/
#
# 着地前の処理
#
# @within function asset:object/2043.lastboss_ice_sword/tick/

# 落下前の回転
    # 最初は遅い
        execute if score @s General.Object.Tick matches 0..20 run tp @s ~ ~ ~ ~22.5 ~
    # 落下が近くなると速く回る
        execute if score @s General.Object.Tick matches 21.. run tp @s ~ ~ ~ ~45 ~

# 落下開始
    # 落下直前、ちょっとフワっと上がる
        execute if score @s General.Object.Tick matches 37 run tp @s ~ ~1 ~ ~ ~
        execute if score @s General.Object.Tick matches 38 run tp @s ~ ~0.5 ~ ~ ~
        execute if score @s General.Object.Tick matches 39 run tp @s ~ ~0.25 ~ ~ ~
    # 上昇の頂点でプレイヤーのほうを見る
        execute if score @s General.Object.Tick matches 39 facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ 90
    # 座標をalign
        execute if score @s General.Object.Tick matches 39 align xyz run tp @s ~0.5 ~0.5 ~0.5
    # 落下する
        execute if score @s General.Object.Tick matches 40 run function asset:object/2043.lastboss_ice_sword/tick/fall_start
