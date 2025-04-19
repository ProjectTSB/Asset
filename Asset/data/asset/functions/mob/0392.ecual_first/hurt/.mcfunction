#> asset:mob/0392.ecual_first/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/392/hurt

# モデルを紐づけ
    tag @e[type=item_display,tag=AW.ModelRoot,sort=nearest,limit=1] add AW.Root.This

# 効果音
    playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 待機時 稀に怯む
    execute if score @s AW.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/max/normal unless score @s AW.FalterCount matches 2.. if predicate lib:random_pass_per/25 run function asset:mob/0392.ecual_first/ai/general/6.falter_start
    execute if score @s AW.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/min/hard unless score @s AW.FalterCount matches 1.. if predicate lib:random_pass_per/15 run function asset:mob/0392.ecual_first/ai/general/6.falter_start

# 紐づけ終了
    tag @e[type=item_display,tag=AW.Root.This,distance=..100] remove AW.Root.This

# 継承元の処理
    function asset:mob/super.hurt
