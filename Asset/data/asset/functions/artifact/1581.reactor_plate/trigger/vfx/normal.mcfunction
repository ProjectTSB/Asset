#> asset:artifact/1581.reactor_plate/trigger/vfx/normal
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/3.main


# --- 【効果音（炎を纏った打撃音）】 ---
# 1. ブレイズのダメージ音（「カキィン！」という硬い打撃と炎が混ざったメインの音）
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.2 0.8

# 2. 火打石の着火音（武器を振った瞬間の「シュボッ」という控えめな炎の音）
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 0.8 1.2

# 2. わずかな焦げ跡の煙（物理的なヒット感を少しだけ足す）
    particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.01 5 normal
    playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 0.9
    particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1.0 10 normal
