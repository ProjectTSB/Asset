#> asset:mob/0363.white_spellbook/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/363/init

# スコアの初期化
    scoreboard players set @s General.Mob.Tick -80

# 速度・追尾力初期化
    function asset:mob/0363.white_spellbook/set_speed/0
