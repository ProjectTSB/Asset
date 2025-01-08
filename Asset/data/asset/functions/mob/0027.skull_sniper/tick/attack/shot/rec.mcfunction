#> asset:mob/0027.skull_sniper/tick/attack/shot/rec
# @within function
#   asset:mob/0027.skull_sniper/tick/attack/shot/
#   asset:mob/0027.skull_sniper/tick/attack/shot/rec

# 演出
    function asset:mob/0027.skull_sniper/tick/attack/shot/vfx/rec

# 衝突判定
    # ブロック
        function asset:mob/0027.skull_sniper/tick/attack/shot/detect_block
        execute if data storage asset:temp Projectile{IsHitBlock:true} if data storage asset:temp Projectile{Pierce:0} run return 0
        execute if data storage asset:temp Projectile{IsHitBlock:true} unless data storage asset:temp Projectile{Pierce:0} if function asset:mob/0027.skull_sniper/tick/attack/shot/hit_block run return 0
    # エンティティ
        function asset:mob/0027.skull_sniper/tick/attack/shot/detect_entity
        execute if data storage asset:temp Projectile{IsHitEntity:true} run return run function asset:mob/0027.skull_sniper/tick/attack/shot/hit_entity

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[distance=..55] run function asset:mob/0027.skull_sniper/tick/attack/shot/rec
