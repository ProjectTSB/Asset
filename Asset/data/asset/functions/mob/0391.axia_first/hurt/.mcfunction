#> asset:mob/0391.axia_first/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/391/hurt

# モデルを紐づけ
    tag @e[type=item_display,tag=AV.ModelRoot,sort=nearest,limit=1] add AV.Root.This

# 効果音
    playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 待機時 稀に怯む
    execute if score @s AV.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/max/normal unless score @s AV.FalterCount matches 2.. if predicate lib:random_pass_per/25 run function asset:mob/0391.axia_first/ai/general/6.falter_start
    execute if score @s AV.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/min/hard unless score @s AV.FalterCount matches 1.. if predicate lib:random_pass_per/15 run function asset:mob/0391.axia_first/ai/general/6.falter_start

# 紐づけ終了
    tag @e[type=item_display,tag=AV.Root.This,distance=..100] remove AV.Root.This

# 継承元の処理
    function asset:mob/super.hurt
