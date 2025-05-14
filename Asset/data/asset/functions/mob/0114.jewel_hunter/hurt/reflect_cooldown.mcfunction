#> asset:mob/0114.jewel_hunter/hurt/reflect_cooldown
#
#
#
# @within function asset:mob/0114.jewel_hunter/hurt/

#> Private
# @private
    #declare score_holder $LatestReflectTick
    #declare score_holder $CurrentTick
    #declare tag CanReflect

# 反射攻撃のクールダウン設定
# 必要なスコアを取得
    execute store result score $LatestReflectTick Temporary run data get storage asset:context this.LatestReflectTick
    execute store result score $CurrentTick Temporary run time query gametime

# イージーで50Tick,ノーマルで20Tick、ハード以上で5Tick
    scoreboard players operation $CurrentTick Temporary -= $LatestReflectTick Temporary
    execute if predicate api:global_vars/difficulty/easy if score $CurrentTick Temporary matches 50.. run tag @s add CanReflect
    execute if predicate api:global_vars/difficulty/2_hard if score $CurrentTick Temporary matches 20.. run tag @s add CanReflect
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $CurrentTick Temporary matches 5.. run tag @s add CanReflect

# 反射攻撃実行
    execute if entity @s[tag=CanReflect] run function asset:mob/0114.jewel_hunter/hurt/reflect

# 反射したTickを記録
    execute if entity @s[tag=CanReflect] store result storage asset:context this.LatestReflectTick int 1 run time query gametime

# リセット
    scoreboard players reset $LatestReflectTick Temporary
    scoreboard players reset $CurrentTick Temporary
    tag @s[tag=CanReflect] remove CanReflect
