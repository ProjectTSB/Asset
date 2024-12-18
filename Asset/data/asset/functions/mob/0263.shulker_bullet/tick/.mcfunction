#> asset:mob/0263.shulker_bullet/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/263/tick

# 直進
    execute unless entity @s[tag=Death] run function asset:mob/0263.shulker_bullet/tick/rec

# 衝突判定
    # ブロック
        function asset:mob/call.m {method:detect_hit_block}
        execute if data storage asset:temp 7B{IsHitBlock:true} run function asset:mob/call.m {method:hit_block}
    # エンティティ
        function asset:mob/call.m {method:detect_hit_entity}
        execute if data storage asset:temp 7B{IsHitEntity:true} run function asset:mob/call.m {method:hit_entity}

# 加算
    scoreboard players add @s General.Mob.Tick 1
# リセット
    data remove storage asset:temp 7B
# 自滅
    execute if score @s General.Mob.Tick matches 600.. run function api:mob/kill
