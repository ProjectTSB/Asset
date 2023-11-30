#> asset:mob/0336.cherry_blossom_fairy/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0336.cherry_blossom_fairy/attack/1.trigger

#> tag
# @private
    #declare tag 9D.Cherry

# 演出
   execute at @p[tag=Victim,distance=..60] run particle cherry_leaves ~ ~1 ~ 0.5 1 0.5 0 20 normal @p
   execute at @p[tag=Victim,distance=..60] run playsound ogg:ambient.nether.crimson_forest.shine3 hostile @s ~ ~ ~ 2 2 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 17.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって桜の木の下に埋められた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは桜の木を切り倒した罪を背負いながら、%2$sによって倒された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim,distance=..60] run function lib:damage/

# 確率で桜吹雪を生み出す
# ハードなら確定
    data modify storage api: Argument.ID set value 337
    execute at @p[tag=Victim,distance=..60] unless entity @e[type=marker,tag=9D.Cherry,distance=..6] if predicate api:global_vars/difficulty/max/normal if predicate lib:random_pass_per/50 run function api:mob/summon
    execute at @p[tag=Victim,distance=..60] unless entity @e[type=marker,tag=9D.Cherry,distance=..6] if predicate api:global_vars/difficulty/min/hard run function api:mob/summon

# 周りにワープさせてから近づかせる
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=9D.Cherry,distance=..60,limit=1] at @s run function lib:spread_entity/

# リセット
    data remove storage lib: Argument
    function lib:damage/reset