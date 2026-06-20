#> asset:artifact/1581.reactor_plate/trigger/vfx/normal
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/3.main


# --- 【効果音（炎を纏った打撃音）】 ---
# 1. ブレイズのダメージ音（「カキィン！」という硬い打撃と炎が混ざったメインの音）
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.0 1.0

# 2. 火打石の着火音（武器を振った瞬間の「シュボッ」という控えめな炎の音）
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 0.8 1.2

# --- 【パーティクル（控えめな炎と火の粉）】 ---
# 1. 通常攻撃サイズの炎（燃え広がらず、打撃箇所にだけシュッと散る）
    particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.05 15 normal

# 2. わずかな焦げ跡の煙（物理的なヒット感を少しだけ足す）
    particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.01 5 normal
