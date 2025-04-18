#> asset:mob/0439.dps_checker_boy/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/439/hurt

# 計測開始時にサウンド
    execute unless data storage asset:context this{IsAttacked:true} run playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1.5 1

data modify storage asset:context this.IsAttacked set value true

execute if data storage asset:context this{Cooldown:0} run function asset:mob/0439.dps_checker_boy/hurt/add_to_sum

# 演出
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 0.7 1.5
    playsound minecraft:block.wood.break hostile @a ~ ~ ~ 1 0.8
