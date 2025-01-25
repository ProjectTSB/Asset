#> asset:mob/0078.messenger_of_thunder/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/78/init

# スーパーメソッド呼び出し
    function asset:mob/super.init

# スポーン時スコア設定
    scoreboard players set @s General.Mob.Tick -80

# 召喚地点記録Markerを召喚
    summon marker ~ ~ ~ {Tags:["26.SpawnPoint"]}
