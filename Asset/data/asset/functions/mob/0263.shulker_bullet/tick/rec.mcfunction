#> asset:mob/0263.shulker_bullet/tick/rec
# @within asset:mob/0263.shulker_bullet/tick/

# 演出
    execute anchored eyes run function asset:mob/0263.shulker_bullet/tick/vfx

# ターゲットを召喚する
    execute if data storage asset:context this.Target.Pos run summon marker ~ ~ ~ {Tags:["7B.Target"]}
    execute if data storage asset:context this.Target.Pos run data modify entity @e[type=marker,tag=7B.Target,distance=..0.01,limit=1] Pos set from storage asset:context this.Target.Pos
# プレイヤーに向けてターンする
    execute if entity @e[type=marker,tag=7B.Target,distance=..0.5,limit=1] unless data storage asset:context this{TurnLimit:0} run function asset:mob/0263.shulker_bullet/tick/turn/

# 衝突判定
    # ブロック
        function asset:mob/call.m {method:detect_hit_block}
        execute if data storage asset:temp Projectile{IsHitBlock:true} run function asset:mob/call.m {method:hit_block}
    # エンティティ
        function asset:mob/call.m {method:detect_hit_entity}
        execute if data storage asset:temp Projectile{IsHitEntity:true} run function asset:mob/call.m {method:hit_entity}

# 直進
    tp @s ^ ^ ^0.3

# リセット
    data remove storage asset:temp Projectile
    kill @e[type=marker,tag=7B.Target,limit=1]
