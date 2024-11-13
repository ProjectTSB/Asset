#> asset:mob/0393.labyria_first/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/393/hurt

# モデルを紐づけ
    tag @e[type=item_display,tag=AZ.ModelRoot,sort=nearest,limit=1] add AZ.Root.This

# 効果音
    playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 待機時 稀に怯みカウンターが溜まる
    execute if score @s AZ.AnimationNum matches 10..12 if predicate api:global_vars/difficulty/max/normal if predicate lib:random_pass_per/25 run scoreboard players add @s AZ.FalterCount 1
    execute if score @s AZ.AnimationNum matches 10..12 if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/15 run scoreboard players add @s AZ.FalterCount 1

# 怯むか否か
    execute if score @s AZ.FalterCount matches 8.. run function asset:mob/0393.labyria_first/ai/general/4.falter_start

# 紐づけ終了
    tag @e[type=item_display,tag=AZ.Root.This,distance=..100] remove AZ.Root.This
