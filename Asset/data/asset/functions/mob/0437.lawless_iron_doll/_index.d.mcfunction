#> asset:mob/0437.lawless_iron_doll/_index.d
# @private

#> tag
# @within function asset:mob/0437.lawless_iron_doll/**
    # ボスのモデルに関するタグ
    #declare tag C5.ModelRoot
    #declare tag C5.ModelRoot.Target
    # ボスのマーカーに関するタグ
    #declare tag C5.Marker
    #declare tag C5.Marker.SpawnPoint
    #declare tag C5.Marker.SummonPoint
    #declare tag C5.Marker.SlamPoint
    #declare tag C5.Marker.Target
    # ボスのムーブセット
    #declare tag C5.Moveset.Intro
    #declare tag C5.Moveset.BaseMove
    #declare tag C5.Moveset.Transition
    # ボスのスキル
    #declare tag C5.Skill.HorizontalSlashShot
    #declare tag C5.Skill.VerticalSlashShot
    #declare tag C5.Skill.Charge
    #declare tag C5.Skill.ShockWave
    #declare tag C5.Skill.ChaserShot
    #declare tag C5.Skill.TeleportSlam
    #declare tag C5.Skill.LingeringLaser
    #declare tag C5.Skill.SuperSlam
    #declare tag C5.Skill.SuperLaser
    #declare tag C5.Skill.Walk
    # ボスの状態
    #declare tag C5.InAction
    #declare tag C5.CycleReset
    #declare tag C5.Exhausted
    # その他
    #declare tag Hit
    #declare tag C5.TargetEntity
    # Animated Java
    #declare function animated_java:lawless_iron_doll/summon
    #declare function animated_java:lawless_iron_doll/animations/intro/tween
    #declare function animated_java:lawless_iron_doll/animations/walk/tween
    #declare function animated_java:lawless_iron_doll/animations/run/tween
    #declare function animated_java:lawless_iron_doll/animations/run2/tween
    #declare function animated_java:lawless_iron_doll/animations/run2_stop/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_melee_1_windup/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_melee_1_activate/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_melee_2_windup/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_melee_2_activate/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_melee_3_windup/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_melee_3_activate/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_ranged_1_windup/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_ranged_1_activate/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_ranged_2_windup/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_ranged_2_activate/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_ranged_2_loop/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_slam/tween
    #declare function animated_java:lawless_iron_doll/animations/attack_slam_2/tween
    #declare function animated_java:lawless_iron_doll/animations/neutral/tween
    #declare function animated_java:lawless_iron_doll/animations/jump/tween
    #declare function animated_java:lawless_iron_doll/animations/break/tween
    #declare function animated_java:lawless_iron_doll/animations/recovery/tween
    #declare function animated_java:lawless_iron_doll/remove/this
    #declare tag aj.lawless_iron_doll.bone.right_item_display
    #declare tag aj.lawless_iron_doll.bone.left_item_display
