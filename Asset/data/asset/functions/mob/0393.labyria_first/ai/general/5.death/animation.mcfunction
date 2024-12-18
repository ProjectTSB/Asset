#> asset:mob/0393.labyria_first/ai/general/5.death/animation
#
# 死亡時アニメーション
#
# @within function asset:mob/0393.labyria_first/ai/general/5.death/schedule

# モデル紐づけ
    tag @e[type=item_display,tag=AX.ModelRoot,distance=..250,sort=nearest,limit=1] add AX.Root.This

# スコア上昇
    execute unless score @s AX.AnimationTick matches -2147483648..2147483647 run scoreboard players set @s AX.AnimationTick 0
    scoreboard players add @s AX.AnimationTick 1

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..250] run function animated_java:labyria/animations/99_0_finish/play
# バリアント
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/jitome/apply

# パーティクル処理
    execute if score @s AX.AnimationTick matches 105 as @e[type=item_display,tag=AX.Root.This,distance=..250] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    execute if score @s AX.AnimationTick matches 105 as @e[type=item_display,tag=AX.Root.This,distance=..250] at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# アニメーション終了処理
    execute if score @s AX.AnimationTick matches 108 run function asset:mob/0393.labyria_first/ai/general/5.death/kill

# 紐づけ終了
    tag @e[type=item_display,tag=AX.Root.This,distance=..250] remove AX.Root.This

# スケジュール起動
    schedule function asset:mob/0393.labyria_first/ai/general/5.death/schedule 1t
