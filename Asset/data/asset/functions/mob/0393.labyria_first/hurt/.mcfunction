#> asset:mob/0393.labyria_first/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/393/hurt

# モデルを紐づけ
    tag @e[type=item_display,tag=AZ.ModelRoot,sort=nearest,limit=1] add AZ.Root.This

# 効果音
    playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 待機時 稀に怯む
#    execute if score @s AZ.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/max/normal unless score @s AZ.FalterCount matches 3.. if predicate lib:random_pass_per/25 run function asset:mob/0392.ecual_first/ai/general/6.falter_start
#    execute if score @s AZ.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/min/hard unless score @s AZ.FalterCount matches 2.. if predicate lib:random_pass_per/15 run function asset:mob/0392.ecual_first/ai/general/6.falter_start

# 紐づけ終了
    tag @e[type=item_display,tag=AZ.Root.This,distance=..100] remove AZ.Root.This
