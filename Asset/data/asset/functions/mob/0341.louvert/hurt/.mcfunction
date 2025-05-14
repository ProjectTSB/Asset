#> asset:mob/0341.louvert/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/341/hurt

# モデルを紐づけ
    tag @e[type=item_display,tag=9H.ModelRoot,sort=nearest,limit=1] add 9H.Root.This

# 効果音
    execute if entity @s[tag=!9H.LastSpell,tag=!9H.Guard.Counter] run playsound entity.player.hurt hostile @a ~ ~ ~ 1 1
    execute unless entity @s[tag=!9H.LastSpell,tag=!9H.Guard.Counter] run playsound item.shield.block hostile @a ~ ~ ~ 1 2

# HP割合を常に保存
    function asset:mob/0341.louvert/hurt/store_hpper

# 待機時 稀にカウンターをする
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 9H.AnimationNum matches 11 if predicate lib:random_pass_per/15 run function asset:mob/0341.louvert/hurt/counter_start

# 待機時 稀に怯む
    execute if predicate api:global_vars/difficulty/max/normal if score @s 9H.AnimationNum matches 11 unless score @s 9H.FalterCount matches 2.. if predicate lib:random_pass_per/15 run function asset:mob/0341.louvert/hurt/falter_start
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 9H.AnimationNum matches 11 unless score @s 9H.FalterCount matches 1.. if predicate lib:random_pass_per/15 run function asset:mob/0341.louvert/hurt/falter_start

# 紐づけ終了
    tag @e[type=item_display,tag=9H.Root.This,distance=..100] remove 9H.Root.This

# 継承元の処理
    function asset:mob/super.hurt
