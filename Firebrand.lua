local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Firebrand",
    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Firebrand/main/FIREBRAND.rbxm",
    Speed = 450,
    DelayTime = 3,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1.25,
    },

    Cycles = {
        Min = 4,
        Max = 9,
        WaitTime = 0.05,
    },

    CamShake = {
        true,
        {7, 15, 0.25, 1.25},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11228274516",
            Image2 = "rbxassetid://11228274516",
            Shake = true,

            Sound1 = {
                10483790459,
                {Volume = 0.5},
            },

            Sound2 = {
                6150329916,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 17, 61),
            },

            Tease = {
                true,
                Min = 2,
                Max = 3,
            },
        },
    },

    CustomDialog = {
        "You died to Firebrand...",
        "The flames caught up to you.",
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Firebrand spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Firebrand despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Firebrand started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Firebrand finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Firebrand entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Firebrand:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to Firebrand!")
end

Creator.runEntity(entity)
