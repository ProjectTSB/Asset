#> asset:mob/0106.mini_shulker/tick/select/foreach
# @within asset:mob/0106.mini_shulker/tick/select/

# ターゲットが完了していれば終了
    execute if data storage asset:context this.Target.ID run return fail

# プレイヤーが視認できるか確認する
    tag @s add 2Y.Target
    execute align xyz positioned ~0.5 ~0.5 ~0.5 facing entity @s eyes run function asset:mob/0106.mini_shulker/tick/target/
    tag @s remove 2Y.Target
