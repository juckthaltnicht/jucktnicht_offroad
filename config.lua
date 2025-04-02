Config = {}

Config.UseMPH = false -- false = kmh | true = mph 
-- All values are in KmH if you want to use miles per hour adjust the values (sorry no idea about miles per hour)

-- Here you can define which car classes should have which speed limit off-road (-1 = no speed limit)
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

-- Here you can define special car models that should have their own off-road limitation 
Config.UseCustomOffRoadLimit = false -- set this to false if you only want to define the off-road limits by vehicle classes
Config.CustomOffRoadLimits = { 
	["t20"] = 50,
    ["adder"] = 40, 
}

-- Values that are considered off-orad, do not touch if no idea
Config.offroadMaterials = {
    47,  -- Grass (https://imgur.com/a/NJMET0z)
    35, -- Gravel street  (https://imgur.com/a/XoSOJ5W)
    48, -- Stone Gravel (https://imgur.com/a/KR6DoO6)
    9, -- Grass stone (https://imgur.com/a/8BOQHsh)
    35, -- Sand street (https://imgur.com/a/d1QRSVA)
    50, -- Sandy Grass idk? (https://imgur.com/a/UUPLrQu)
    18, -- Sand (https://imgur.com/a/gTC8O7q)
    46, -- Clean Grass (https://imgur.com/a/sZE0chy)
    36, -- Sandy stone (https://imgur.com/a/9a7AGIC)
    32, -- Another Sandy Grass? (https://imgur.com/a/9rEXlG3)
    21, -- Another Sandy Street? (https://imgur.com/a/cpRrxoy)
    19, -- Bush and Sand idk? (https://imgur.com/a/6YBGhbE)
    23, -- Nice Another Sand (https://imgur.com/a/cG13qp5)
    11, -- Brown Sand stone (https://imgur.com/a/aHf1oJS)
    24 -- Cool GTA Antoher sand wtf (https://imgur.com/a/80OKNRK)
}