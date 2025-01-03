#> asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/start
#
# ダメージエリア展開開始の演出
#
# @within function asset:object/2043.lastboss_ice_sword/tick/landing/

# サウンド
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.5
    playsound minecraft:item.trident.return neutral @a ~ ~ ~ 2 0.5
    playsound minecraft:block.respawn_anchor.set_spawn neutral @a ~ ~ ~ 1 2
    
# パーティクル
    particle end_rod ~ ~-0.5 ~ 0.2 0.2 0.2 0.1 25
