#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.9
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.4
    particle flash ~ ~ ~ 0 0 0 1 1

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_4_active/tween {to_frame:0,duration:1}

# マーカーの方を向く
    execute facing entity @p[distance=..64] feet run tp @s ~ ~ ~ ~ ~

# ループカウント加算
    scoreboard players add @s RW.LoopCount 1

# 再帰スタート
    function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/recursive
