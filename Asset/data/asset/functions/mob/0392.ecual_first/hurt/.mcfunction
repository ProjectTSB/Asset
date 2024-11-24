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
    execute if score @s AW.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/max/normal unless score @s AW.FalterCount matches 3.. if predicate lib:random_pass_per/25 run function asset:mob/0392.ecual_first/ai/general/6.falter_start
    execute if score @s AW.AnimationNum matches 10..11 if predicate api:global_vars/difficulty/min/hard unless score @s AW.FalterCount matches 2.. if predicate lib:random_pass_per/15 run function asset:mob/0392.ecual_first/ai/general/6.falter_start

# 紐づけ終了
    tag @e[type=item_display,tag=AW.Root.This,distance=..100] remove AW.Root.This

#> function
# @private
    #declare function asset:mob/0390.triple_rabbits/ai/general/share_health

# 管理用スライムに情報を送る
    scoreboard players operation $AW.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AW.Temp AU.Dummy.UUID run function asset:mob/0390.triple_rabbits/ai/general/share_health

# リセット
    scoreboard players reset $AW.Temp AU.Dummy.UUID
