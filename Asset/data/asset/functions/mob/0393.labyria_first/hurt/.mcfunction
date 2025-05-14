#> asset:mob/0393.labyria_first/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/393/hurt

# モデルを紐づけ
    tag @e[type=item_display,tag=AX.ModelRoot,sort=nearest,limit=1] add AX.Root.This

# 効果音
    playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 待機時 稀に怯みカウンターが溜まる
    execute if score @s AX.AnimationNum matches 10..12 if predicate api:global_vars/difficulty/max/2_hard if predicate lib:random_pass_per/25 run scoreboard players add @s AX.FalterCount 1
    execute if score @s AX.AnimationNum matches 10..12 if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/15 run scoreboard players add @s AX.FalterCount 1

# 怯むか否か
    execute if score @s AX.FalterCount matches 8.. run function asset:mob/0393.labyria_first/ai/general/4.falter_start

# 紐づけ終了
    tag @e[type=item_display,tag=AX.Root.This,distance=..100] remove AX.Root.This

# 継承元の処理
    function asset:mob/super.hurt
