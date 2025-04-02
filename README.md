# 🏎️ FiveM Offroad Speed Limit Script - jucktnicht_offroad

This **FiveM Lua script** limits vehicle speed when driving off-road, providing a more realistic driving experience.

## 📌 Features
- Limits vehicle speed when driving on off-road surfaces
- Customizable speed limits for vehicle classes
- Ability to set specific speed limits for certain vehicles
- Supports both **km/h** and **mph**
- Configurable off-road surface types

## 📂 Installation
1. **Download**: Place the script in your `resources` folder.
2. **Configuration**: Open `config.lua` and customize the settings to your preference.
3. **Server.cfg**: Add the following line to your `server.cfg`:
   
   ```plaintext
   ensure jucktnicht_offroad
   ```
4. **Restart**: Restart your server, and the script will be active.

## ⚙️ Configuration
In `config.lua`, you can adjust the following settings:

```lua
Config = {}

Config.UseMPH = false -- false = km/h | true = mph 

-- Define speed limits for vehicle classes (-1 = no speed limit)
Config.OffRoadLimitClasses = { 
    [0] = -1, -- Compacts
    [1] = -1, -- Sedans
    [2] = -1, -- SUVs
    [3] = -1, -- Coupes
    [4] = -1, -- Muscle
    [5] = 80, -- Sports Classics
    [6] = 80, -- Sports
    [7] = 80, -- Super
    [8] = -1, -- Motorcycles
    [9] = -1, -- Off-road
    [10] = -1, -- Industrial
    [11] = -1, -- Utility
    [12] = -1, -- Vans
    [13] = -1, -- Cycles
    [14] = -1, -- Boats
    [15] = -1, -- Helicopters
    [16] = -1, -- Planes
    [17] = -1, -- Service
    [18] = -1, -- Emergency
    [19] = -1, -- Military
    [20] = -1, -- Commercial
    [21] = -1, -- Trains
}

-- Custom vehicle-specific speed limits
Config.UseCustomOffRoadLimit = false -- Set to false to only use class-based limits
Config.CustomOffRoadLimits = { 
    ["t20"] = 50,
    ["adder"] = 40,
}

-- Defined off-road surface materials (do not modify if unsure)
Config.offroadMaterials = {
    47,  -- Grass
    35, -- Gravel road
    48, -- Stone gravel
    9, -- Grass stone
    35, -- Sand road
    50, -- Sandy grass
    18, -- Sand
    46, -- Clean grass
    36, -- Sandy stone
    32, -- Another sandy grass
    21, -- Another sandy road
    19, -- Bush and sand
    23, -- Another sand surface
    11, -- Brown sand stone
    24 -- Another GTA sand type
}
```

## 🎯 Motivation
This script was created in response to overpriced alternatives on the market. The idea came from seeing similar systems being sold for high prices, such as [this one](https://pruda-scripts.tebex.io/package/6472654). I believe such a simple functionality should be freely available to the community!

## 🛠️ Support & Development
If you have any questions or want to contribute to further development, feel free to create an issue or pull request!

Enjoy the script! 🚀

