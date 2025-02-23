pcall(function() local varsP, tablesP, funsP, funsC, a = CLASS(), {}, {}, {}
 local fun, device = require 'Core.Functions.fun', require 'Core.Functions.device'
        
 local other, select = require 'Core.Functions.other', require 'Core.Functions.select'
        
 local math, prop = require 'Core.Functions.math', require 'Core.Functions.prop'
        
 local SERVER, CLIENT = require 'Network.server', require 'Network.client'
 GAME.orientation = CURRENT_ORIENTATION display.setDefault('background', 0) transition.ignoreEmptyReference = true
        
 GAME.group = display.newGroup() GAME_texts = {} GAME_objects = {} GAME_media = {} GAME.multi = false
        
 GAME_groups = {} GAME_masks = {} GAME_bitmaps = {} GAME.currentStage = {} GAME_stops = {}
        
 GAME_animations = {} GAME_widgets = {} GAME_tags = {TAG = {}} GAME_timers = {} GAME_ts = {}
        
 GAME.group.const = {touch = false, touch_x = 360, touch_y = 640} GAME_displays = {} device.start()
        
 GAME.group.const.touch_fun = function(e) handlerTouch(e) GAME.group.const.touch = e.phase ~= 'ended' and e.phase
        
 ~= 'cancelled' GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y for i = 1, #GAME_displays do
        
 GAME_displays[i](e) end return true end Runtime:addEventListener('touch', GAME.group.const.touch_fun)
        
 PHYSICS.start() GAME_collis = {} for child = 1, display.currentStage.numChildren do
        
 GAME.currentStage[display.currentStage[child]] = true end GAME_conditions = {} GAME.group.const.enterFrame =
        
 function() for i = 1, #GAME_conditions do GAME_conditions[i]() end end
        
 Runtime:addEventListener('enterFrame', GAME.group.const.enterFrame) GAME_backs = {} GAME_suspends = {}
        
 GAME.group.const.keyBack = function(e) if e.phase == 'up' and (e.keyName == 'back' or e.keyName == 'escape') then
        
 for i = 1, #GAME_backs do GAME_backs[i]() end return true end end
        
 Runtime:addEventListener('key', GAME.group.const.keyBack) GAME_resumes = {} GAME.group.const.system =
        
 function(e) if e.type == 'applicationSuspend' or e.type == 'applicationExit' then for i = 1, #GAME_suspends
        
 do GAME_suspends[i]() end elseif e.type == 'applicationResume' then for i = 1, #GAME_resumes do
        
 GAME_resumes[i]() end end end Runtime:addEventListener('system', GAME.group.const.system)
        
 GAME_textures = {} GAME_accelerometers = {} GAME.hash = CRYPTO.digest(CRYPTO.md5,
        
 math.random(1, 999999999)) local hash = GAME.hash GAME_networks = {} GAME.group.const.touch_x,
        
 GAME.group.const.touch_y = 0, 0 local tmp = DOC_DIR .. '/' .. CURRENT_LINK .. '/Temps' OS_REMOVE(tmp, true)
        
 LFS.mkdir(tmp) GAME_snapshots = {} GAME_joints = {} GAME_DEVICE_ID = 'ada89edff6b062b2deabf0748e6c9a64b6e0b2f053c300c705884bbd0a222326'
        
 GAME_particles = {} GAME_shaders = {} GAME_objects3d = {} GAME.timer = system.getTimer()
        
 FINGERS = {} FINGERS_ARRAY = {}
 GAME.group.texts = GAME_texts GAME.group.objects = GAME_objects GAME.group.media = GAME_media 
        
 GAME.group.groups = GAME_groups GAME.group.masks = GAME_masks GAME.group.bitmaps = GAME_bitmaps 
        
 GAME.group.animations = GAME_animations GAME.group.widgets = GAME_widgets GAME.group.tags = GAME_tags 
        
 GAME.group.displays = GAME_displays GAME.group.collis = GAME_collis GAME.group.conditions = GAME_conditions 
        
 GAME.group.backs = GAME_backs GAME.group.suspends = GAME_suspends GAME.group.resumes = GAME_resumes 
        
 GAME.group.textures = GAME_textures GAME.group.accelerometers = GAME_accelerometers 
        
 GAME.group.joints = GAME_joints GAME.group.snapshots = GAME_snapshots GAME.group.timers = GAME_timers 
        
 GAME.group.particles = GAME_particles GAME.group.shaders = GAME_shaders GAME.group.objects3d = GAME_objects3d 
        
 GAME.group.stops = GAME_stops GAME.group.ts = GAME_ts GAME.group.networks = GAME_networks 
 GAME.RESOURCES = JSON.decode('{"sounds":[],"videos":[],"others":[],"images":[["трава","linear","Image1"]],"levels":[],"fonts":[["font","Font2"],["Minecraft","Font1"]]}') 
 GAME.camera = CAMERA.createView() GAME.group:insert(GAME.camera) 
 local function script() local varsS, tablesS, funsS = CLASS(), {}, {} pcall(function() funsC['custom2'] = function(...) local varsE, tablesE, args = {}, {}, {...} varsE['name'] = args[1] varsE['text'] = args[2] varsE['font'] = args[3] varsE['roundness'] = args[4] varsE['function'] = args[5] varsE['width'] = args[6] varsE['height'] = args[7] varsE['x'] = args[8] varsE['y'] = args[9]
 pcall(function() varsS['listener'] = (varsE['function']) end)
 pcall(function() local name = (varsE['name']) pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((varsE['x']))), (SET_Y((varsE['y']))), (varsE['width']), (varsE['height']), (varsE['roundness']))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local colors = (JSON.decode('[63, 63, 63]'))
 GAME_objects[(varsE['name'])]:setFillColor(colors[1]/255, colors[2]/255, colors[3]/255) end)
 pcall(function() local name, colors, font = (varsE['name']), (JSON.decode('[223, 223, 223]')), other.getFont((varsE['font']))
 pcall(function() GAME_texts[name]:removeSelf() end) GAME_texts[name] =
 display.newText(GAME.group, tostring((varsE['text'])), (SET_X((varsE['x']))), (SET_Y((varsE['y']))), font, 36)
 pcall(function() GAME_texts[name]:setFillColor(colors[1]/255, colors[2]/255, colors[3]/255) end)
 pcall(function() GAME_texts[name].alpha = (100) / 100 end)
 GAME_texts[name]._density = 1 GAME_texts[name]._bounce = 0
 GAME_texts[name]._friction = 0 GAME_texts[name]._gravity = 1
 GAME_texts[name]._body = '' GAME_texts[name]._hitbox = {}
 GAME_texts[name]._touch = '' GAME_texts[name]._tag = 'TAG'
 GAME.group:insert(GAME_texts[name]) GAME_texts[name].name = name end)
 pcall(function() GAME_objects[(varsE['name'])]._data['is locked'] = (false) end)
 pcall(function() GAME_objects[(varsE['name'])]._data['value'] = (0) end)
 pcall(function() local name = (varsE['name'])
 table.insert(GAME_objects[name]._listeners, funsS['touch'])
 if not GAME_objects[name].hasListener then GAME_objects[name].hasListener = true
 GAME_objects[name]:addEventListener('touch',
 function(e) local isComplete, result = pcall(function() if GAME.hash == hash then handlerTouch(e)
 e.isTouch = e.target._touch GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y
 if e.phase == 'began' then e.target._touch, GAME.group.const.touch = true, true
 if GAME.multi then display.getCurrentStage():setFocus(e.target, e.id)
 else display.getCurrentStage():setFocus(e.target) end
 elseif e.phase == 'ended' or e.phase == 'cancelled' then
 e.target._touch, GAME.group.const.touch = false, false
 if GAME.multi then display.getCurrentStage():setFocus(e.target, nil) else
 display.getCurrentStage():setFocus(nil) for name, object in pairs(GAME_objects) do
 if object._touch then GAME_objects[name]._touch = false end end end end
 e = {_ccode_event = e, name = e.target.name, x = GET_X(e.x, e.target), y = GET_Y(e.y, e.target),
 xStart = GET_X(e.xStart, e.target), yStart = GET_Y(e.yStart, e.target),
 id = e.id, xDelta = e.xDelta, yDelta = e.yDelta, phase = e.phase}
 local responses = {} for i = 1, #GAME_objects[name]._listeners do
 local response = GAME_objects[name]._listeners[i](e) if response ~= nil then
 table.insert(responses, response) end end return responses[#responses]
 end end) if isComplete and result ~= nil then return result end return true end) end end) end end)
 pcall(function() funsS['touch'] = function(...) if GAME.hash == hash then
 local varsE, tablesE = {}, {} tablesE['table'] = COPY_TABLE_P({...}, true)
 pcall(function() varsE['name'] = (tablesE['table']['target']['name']) end)
 local isComplete, result = pcall(function() if (not prop['obj.var'] ( varsE['name'] )['is locked']) then
 pcall(function() varsE['phase'] = (tablesE['table']['phase']) end)
 pcall(function() varsE['buttonName'] = (fun['tostring'] ( tablesE['table']['name'] )) end)
 pcall(function() varsE['x'] = (tablesE['table']['x'] - 360) end)
 pcall(function() varsE['y'] = (- ( tablesE['table']['y'] - 640 )) end)
 pcall(function() varsE['xStart'] = (tablesE['table']['xStart'] - 360) end)
 pcall(function() varsE['yStart'] = (- ( tablesE['table']['yStart'] - 640 )) end)
 pcall(function() varsE['xDelta'] = (varsE['x'] - varsE['xStart']) end)
 pcall(function() varsE['yDelta'] = (varsE['y'] - varsE['yStart']) end)
 pcall(function() varsE['value'] = (prop['obj.var'] ( varsE['name'] )['value']) end)
 local isComplete, result = pcall(function() if (varsE['phase'] == 'began') then
 pcall(function() varsE['value'] = varsE['value'] + (1) end)
 end end) if isComplete and result ~= nil then if result == '_ccode_break' then return end return result end
 pcall(function() tablesE['table'] = JSON.decode('{}') end)
 pcall(function() if tablesE['table'] then tablesE['table']['name'] = (varsE['buttonName'])
 else tablesE['table'] = {} tablesE['table']['name'] = (varsE['buttonName']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['phase'] = (varsE['phase'])
 else tablesE['table'] = {} tablesE['table']['phase'] = (varsE['phase']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['phase'] = (varsE['phase'])
 else tablesE['table'] = {} tablesE['table']['phase'] = (varsE['phase']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['x'] = (varsE['x'])
 else tablesE['table'] = {} tablesE['table']['x'] = (varsE['x']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['y'] = (varsE['y'])
 else tablesE['table'] = {} tablesE['table']['y'] = (varsE['y']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['xStart'] = (varsE['xStart'])
 else tablesE['table'] = {} tablesE['table']['xStart'] = (varsE['xStart']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['yStart'] = (varsE['yStart'])
 else tablesE['table'] = {} tablesE['table']['yStart'] = (varsE['yStart']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['xDelta'] = (varsE['xDelta'])
 else tablesE['table'] = {} tablesE['table']['xDelta'] = (varsE['xDelta']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['yDelta'] = (varsE['yDelta'])
 else tablesE['table'] = {} tablesE['table']['yDelta'] = (varsE['yDelta']) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['left_edge'] = (prop['obj.pos_x'] ( varsE['name'] ) - prop['obj.width'] ( varsE['name'] ) / 2)
 else tablesE['table'] = {} tablesE['table']['left_edge'] = (prop['obj.pos_x'] ( varsE['name'] ) - prop['obj.width'] ( varsE['name'] ) / 2) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['right_edge'] = (prop['obj.pos_x'] ( varsE['name'] ) + prop['obj.width'] ( varsE['name'] ) / 2)
 else tablesE['table'] = {} tablesE['table']['right_edge'] = (prop['obj.pos_x'] ( varsE['name'] ) + prop['obj.width'] ( varsE['name'] ) / 2) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['bottom_edge'] = (prop['obj.pos_y'] ( varsE['name'] ) - prop['obj.height'] ( varsE['name'] ) / 2)
 else tablesE['table'] = {} tablesE['table']['bottom_edge'] = (prop['obj.pos_y'] ( varsE['name'] ) - prop['obj.height'] ( varsE['name'] ) / 2) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['top_edge'] = (prop['obj.pos_y'] ( varsE['name'] ) + prop['obj.height'] ( varsE['name'] ) / 2)
 else tablesE['table'] = {} tablesE['table']['top_edge'] = (prop['obj.pos_y'] ( varsE['name'] ) + prop['obj.height'] ( varsE['name'] ) / 2) end end)
 pcall(function() if tablesE['table'] then tablesE['table']['value'] = (varsE['value'])
 else tablesE['table'] = {} tablesE['table']['value'] = (varsE['value']) end end)
 pcall(function() GAME_objects[(varsE['name'])]._data['value'] = (varsE['value']) end)
 return (varsS['listener'] ( tablesE['table'] ))
 end end) if isComplete and result ~= nil then if result == '_ccode_break' then return end return result end
 end end end) 
 function onStart1() end end script() 
 local function script() local varsS, tablesS, funsS = CLASS(), {}, {}
 pcall(function() funsP['7a2cc3d3-72a7-46ea-b448-ab58f49d84fd'] = function(e) if e.phase == 'began' then if GAME.hash
 == hash then local varsE, tablesE = {}, {} a = COPY_TABLE(e, true)
 pcall(function() local name = ('карты') local obj = GAME_objects[name] local function doTo(obj)
 transition.to(obj, {onComplete =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onRepeat =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 onPause =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onResume =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onCancel =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 time = (0.3) * 1000, iterations = (1), transition = easing.linear,
 alpha = (80) / 100}) end if 'GAME_objects' == 'GAME_tags'
 then pcall(function() local function doTag(tag) for _, child in ipairs(obj) do if child[2]
 == 'tags' then doTag(child[1]) else doTo(GAME.group[child[2]][child[1]])
 end end end doTag(name) end) else doTo(obj) end end)
 end end end end)
 timer.new(1, 1, function()
 pcall(function() local name = ('карты')
 table.insert(GAME_objects[name]._listeners, funsP['7a2cc3d3-72a7-46ea-b448-ab58f49d84fd'])
 if not GAME_objects[name].hasListener then GAME_objects[name].hasListener = true
 GAME_objects[name]:addEventListener('touch',
 function(e) local isComplete, result = pcall(function() if GAME.hash == hash then handlerTouch(e)
 e.isTouch = e.target._touch GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y
 if e.phase == 'began' then e.target._touch, GAME.group.const.touch = true, true
 if GAME.multi then display.getCurrentStage():setFocus(e.target, e.id)
 else display.getCurrentStage():setFocus(e.target) end
 elseif e.phase == 'ended' or e.phase == 'cancelled' then
 e.target._touch, GAME.group.const.touch = false, false
 if GAME.multi then display.getCurrentStage():setFocus(e.target, nil) else
 display.getCurrentStage():setFocus(nil) for name, object in pairs(GAME_objects) do
 if object._touch then GAME_objects[name]._touch = false end end end end
 e = {_ccode_event = e, name = e.target.name, x = GET_X(e.x, e.target), y = GET_Y(e.y, e.target),
 xStart = GET_X(e.xStart, e.target), yStart = GET_Y(e.yStart, e.target),
 id = e.id, xDelta = e.xDelta, yDelta = e.yDelta, phase = e.phase}
 local responses = {} for i = 1, #GAME_objects[name]._listeners do
 local response = GAME_objects[name]._listeners[i](e) if response ~= nil then
 table.insert(responses, response) end end return responses[#responses]
 end end) if isComplete and result ~= nil then return result end return true end) end end)
 end)
 pcall(function() funsP['b9f86359-b842-4e3c-b715-1db9c0398795'] = function(e) if e.phase == 'began' then if GAME.hash
 == hash then local varsE, tablesE = {}, {} a = COPY_TABLE(e, true)
 pcall(function() local name = ('бойцы') local obj = GAME_objects[name] local function doTo(obj)
 transition.to(obj, {onComplete =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onRepeat =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 onPause =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onResume =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onCancel =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 time = (0.3) * 1000, iterations = (1), transition = easing.linear,
 alpha = (80) / 100}) end if 'GAME_objects' == 'GAME_tags'
 then pcall(function() local function doTag(tag) for _, child in ipairs(obj) do if child[2]
 == 'tags' then doTag(child[1]) else doTo(GAME.group[child[2]][child[1]])
 end end end doTag(name) end) else doTo(obj) end end)
 end end end end)
 timer.new(1, 1, function()
 pcall(function() local name = ('бойцы')
 table.insert(GAME_objects[name]._listeners, funsP['b9f86359-b842-4e3c-b715-1db9c0398795'])
 if not GAME_objects[name].hasListener then GAME_objects[name].hasListener = true
 GAME_objects[name]:addEventListener('touch',
 function(e) local isComplete, result = pcall(function() if GAME.hash == hash then handlerTouch(e)
 e.isTouch = e.target._touch GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y
 if e.phase == 'began' then e.target._touch, GAME.group.const.touch = true, true
 if GAME.multi then display.getCurrentStage():setFocus(e.target, e.id)
 else display.getCurrentStage():setFocus(e.target) end
 elseif e.phase == 'ended' or e.phase == 'cancelled' then
 e.target._touch, GAME.group.const.touch = false, false
 if GAME.multi then display.getCurrentStage():setFocus(e.target, nil) else
 display.getCurrentStage():setFocus(nil) for name, object in pairs(GAME_objects) do
 if object._touch then GAME_objects[name]._touch = false end end end end
 e = {_ccode_event = e, name = e.target.name, x = GET_X(e.x, e.target), y = GET_Y(e.y, e.target),
 xStart = GET_X(e.xStart, e.target), yStart = GET_Y(e.yStart, e.target),
 id = e.id, xDelta = e.xDelta, yDelta = e.yDelta, phase = e.phase}
 local responses = {} for i = 1, #GAME_objects[name]._listeners do
 local response = GAME_objects[name]._listeners[i](e) if response ~= nil then
 table.insert(responses, response) end end return responses[#responses]
 end end) if isComplete and result ~= nil then return result end return true end) end end)
 end)
 pcall(function() funsP['225b9812-3966-4893-914a-226ce6f8f714'] = function(e) if e.phase == 'began' then if GAME.hash
 == hash then local varsE, tablesE = {}, {} a = COPY_TABLE(e, true)
 pcall(function() local name = ('играть') local obj = GAME_objects[name] local function doTo(obj)
 transition.to(obj, {onComplete =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onRepeat =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 onPause =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onResume =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onCancel =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 time = (0.3) * 1000, iterations = (1), transition = easing.linear,
 alpha = (80) / 100}) end if 'GAME_objects' == 'GAME_tags'
 then pcall(function() local function doTag(tag) for _, child in ipairs(obj) do if child[2]
 == 'tags' then doTag(child[1]) else doTo(GAME.group[child[2]][child[1]])
 end end end doTag(name) end) else doTo(obj) end end)
 end end end end)
 timer.new(1, 1, function()
 pcall(function() local name = ('играть')
 table.insert(GAME_objects[name]._listeners, funsP['225b9812-3966-4893-914a-226ce6f8f714'])
 if not GAME_objects[name].hasListener then GAME_objects[name].hasListener = true
 GAME_objects[name]:addEventListener('touch',
 function(e) local isComplete, result = pcall(function() if GAME.hash == hash then handlerTouch(e)
 e.isTouch = e.target._touch GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y
 if e.phase == 'began' then e.target._touch, GAME.group.const.touch = true, true
 if GAME.multi then display.getCurrentStage():setFocus(e.target, e.id)
 else display.getCurrentStage():setFocus(e.target) end
 elseif e.phase == 'ended' or e.phase == 'cancelled' then
 e.target._touch, GAME.group.const.touch = false, false
 if GAME.multi then display.getCurrentStage():setFocus(e.target, nil) else
 display.getCurrentStage():setFocus(nil) for name, object in pairs(GAME_objects) do
 if object._touch then GAME_objects[name]._touch = false end end end end
 e = {_ccode_event = e, name = e.target.name, x = GET_X(e.x, e.target), y = GET_Y(e.y, e.target),
 xStart = GET_X(e.xStart, e.target), yStart = GET_Y(e.yStart, e.target),
 id = e.id, xDelta = e.xDelta, yDelta = e.yDelta, phase = e.phase}
 local responses = {} for i = 1, #GAME_objects[name]._listeners do
 local response = GAME_objects[name]._listeners[i](e) if response ~= nil then
 table.insert(responses, response) end end return responses[#responses]
 end end) if isComplete and result ~= nil then return result end return true end) end end)
 end)
 pcall(function() funsP['a4a5d26f-606d-4800-b158-47f1660e58fa'] = function(e) if GAME.hash == hash then
 if (e.phase == 'ended' or e.phase == 'cancelled') and e._ccode_event.isTouch then
 local varsE, tablesE = {}, {} a = COPY_TABLE(e, true)
 pcall(function() local name = ('играть') local obj = GAME_objects[name] local function doTo(obj)
 transition.to(obj, {onComplete =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onRepeat =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 onPause =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onResume =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onCancel =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 time = (0.3) * 1000, iterations = (1), transition = easing.linear,
 alpha = (100) / 100}) end if 'GAME_objects' == 'GAME_tags'
 then pcall(function() local function doTag(tag) for _, child in ipairs(obj) do if child[2]
 == 'tags' then doTag(child[1]) else doTo(GAME.group[child[2]][child[1]])
 end end end doTag(name) end) else doTo(obj) end end)
 pcall(function() local name = ('трава') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((0))), (SET_Y((0))), (720), (1600), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local name = ('3') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((0))), (SET_Y((- 600))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local name = ('2') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((- 200))), (SET_Y((- 600))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local name = ('1') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((200))), (SET_Y((- 600))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local name = ('башня2') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((0))), (SET_Y((600))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local name = ('башня3') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((200))), (SET_Y((600))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local name = ('башня1') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((- 200))), (SET_Y((600))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() GAME_objects[('играть')].isVisible = false end)
 pcall(function() GAME_texts[('играть')].isVisible = false end)
 pcall(function() local colors = (JSON.decode('[15, 117, 17]'))
 GAME_objects[('трава')]:setFillColor(colors[1]/255, colors[2]/255, colors[3]/255) end)
 pcall(function() varsS['здоровье'] = (300000) end)
 pcall(function() local name, colors, font = ('здоровье врага'), (JSON.decode('[255, 255, 255]')), other.getFont(('ubuntu'))
 pcall(function() GAME_texts[name]:removeSelf() end) GAME_texts[name] =
 display.newText(GAME.group, tostring((varsS['здоровье'])), (SET_X((0))), (SET_Y((700))), font, (36))
 pcall(function() GAME_texts[name]:setFillColor(colors[1]/255, colors[2]/255, colors[3]/255) end)
 pcall(function() GAME_texts[name].alpha = (100) / 100 end)
 GAME_texts[name]._density = 1 GAME_texts[name]._bounce = 0
 GAME_texts[name]._friction = 0 GAME_texts[name]._gravity = 1
 GAME_texts[name]._body = '' GAME_texts[name]._hitbox = {}
 GAME_texts[name]._touch = '' GAME_texts[name]._tag = 'TAG'
 GAME.group:insert(GAME_texts[name]) GAME_texts[name].name = name end)
 end end end end)
 timer.new(1, 1, function()
 pcall(function() local name = ('играть')
 table.insert(GAME_objects[name]._listeners, funsP['a4a5d26f-606d-4800-b158-47f1660e58fa'])
 if not GAME_objects[name].hasListener then GAME_objects[name].hasListener = true
 GAME_objects[name]:addEventListener('touch',
 function(e) local isComplete, result = pcall(function() if GAME.hash == hash then handlerTouch(e)
 e.isTouch = e.target._touch GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y
 if e.phase == 'began' then e.target._touch, GAME.group.const.touch = true, true
 if GAME.multi then display.getCurrentStage():setFocus(e.target, e.id)
 else display.getCurrentStage():setFocus(e.target) end
 elseif e.phase == 'ended' or e.phase == 'cancelled' then
 e.target._touch, GAME.group.const.touch = false, false
 if GAME.multi then display.getCurrentStage():setFocus(e.target, nil) else
 display.getCurrentStage():setFocus(nil) for name, object in pairs(GAME_objects) do
 if object._touch then GAME_objects[name]._touch = false end end end end
 e = {_ccode_event = e, name = e.target.name, x = GET_X(e.x, e.target), y = GET_Y(e.y, e.target),
 xStart = GET_X(e.xStart, e.target), yStart = GET_Y(e.yStart, e.target),
 id = e.id, xDelta = e.xDelta, yDelta = e.yDelta, phase = e.phase}
 local responses = {} for i = 1, #GAME_objects[name]._listeners do
 local response = GAME_objects[name]._listeners[i](e) if response ~= nil then
 table.insert(responses, response) end end return responses[#responses]
 end end) if isComplete and result ~= nil then return result end return true end) end end)
 end)
 pcall(function() table.insert(GAME_displays, function(e) if GAME.hash == hash then
 if e.phase == 'began' then local varsE, tablesE = {}, {} a
 = {_ccode_event = e, name = '_ccode_display', x = GET_X(e.x), y = GET_Y(e.y), xStart = GET_X(e.xStart),
 yStart = GET_Y(e.yStart), id = e.id, xDelta = e.xDelta, yDelta = e.yDelta}
 pcall(function() local name = ('й') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((device['finger_touching_screen_x'] ( )))), (SET_Y((device['finger_touching_screen_y'] ( )))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 pcall(function() local name, type = ('й'), (select['dynamic']())
 local maskBits, categoryBit = (nil), (nil)
 pcall(function() PHYSICS.removeBody(GAME_objects[name]) end)
 local params = other.getPhysicsParams((0), (0), (1), GAME_objects[name]._hitbox,
 {categoryBit, maskBits}) PHYSICS.addBody(GAME_objects[name], 'dynamic',
 UNPACK(params)) GAME_objects[name]._density = params.density
 GAME_objects[name]._bounce = params.bounce
 GAME_objects[name]._friction = params.friction
 GAME_objects[name]._gravity = 0 - ((-1))
 GAME_objects[name]._body = type
 GAME_objects[name].bodyType = type
 GAME_objects[name]._maskBits = maskBits
 GAME_objects[name]._categoryBit = categoryBit
 GAME_objects[name].gravityScale = GAME_objects[name]._gravity end)
 pcall(function() timer.new(1, 0, function(e) pcall(function() if GAME.hash == hash then
 pcall(function() GAME_objects[('й')]:setLinearVelocity((0), -(40)) end)
 end end) end) end)
 pcall(function() GAME_timers[('1')] = timer.new((0.8)
 * 1000, (999999), function(e) pcall(function() if GAME.hash == hash then
 pcall(function() varsS['здоровье'] = varsS['здоровье'] + (- math['random'] ( 30 , 800 )) end)
 pcall(function() GAME_texts[('здоровье врага')].text = tostring((varsS['здоровье'])) end)
 end end) end) end)
 pcall(function() table.insert(GAME_ts, timer.new((13)
 * 1000, (50), function(e) pcall(function() if GAME.hash == hash then
 pcall(function() timer.pause(GAME_timers[('1')]) end)
 pcall(function() local name = ('й')
 GAME_objects[name]:removeSelf() GAME_objects[name] = nil end)
 end end) end)) end)
 end end end) end)
 pcall(function() funsP['244817f1-df7a-488b-9a0f-e8efe50ca9c4'] = function(e) if GAME.hash == hash then
 if (e.phase == 'ended' or e.phase == 'cancelled') and e._ccode_event.isTouch then
 local varsE, tablesE = {}, {} a = COPY_TABLE(e, true)
 pcall(function() local name = ('карты') local obj = GAME_objects[name] local function doTo(obj)
 transition.to(obj, {onComplete =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onRepeat =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 onPause =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onResume =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onCancel =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 time = (0.3) * 1000, iterations = (1), transition = easing.linear,
 alpha = (100) / 100}) end if 'GAME_objects' == 'GAME_tags'
 then pcall(function() local function doTag(tag) for _, child in ipairs(obj) do if child[2]
 == 'tags' then doTag(child[1]) else doTo(GAME.group[child[2]][child[1]])
 end end end doTag(name) end) else doTo(obj) end end)
 end end end end)
 timer.new(1, 1, function()
 pcall(function() local name = ('карты')
 table.insert(GAME_objects[name]._listeners, funsP['244817f1-df7a-488b-9a0f-e8efe50ca9c4'])
 if not GAME_objects[name].hasListener then GAME_objects[name].hasListener = true
 GAME_objects[name]:addEventListener('touch',
 function(e) local isComplete, result = pcall(function() if GAME.hash == hash then handlerTouch(e)
 e.isTouch = e.target._touch GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y
 if e.phase == 'began' then e.target._touch, GAME.group.const.touch = true, true
 if GAME.multi then display.getCurrentStage():setFocus(e.target, e.id)
 else display.getCurrentStage():setFocus(e.target) end
 elseif e.phase == 'ended' or e.phase == 'cancelled' then
 e.target._touch, GAME.group.const.touch = false, false
 if GAME.multi then display.getCurrentStage():setFocus(e.target, nil) else
 display.getCurrentStage():setFocus(nil) for name, object in pairs(GAME_objects) do
 if object._touch then GAME_objects[name]._touch = false end end end end
 e = {_ccode_event = e, name = e.target.name, x = GET_X(e.x, e.target), y = GET_Y(e.y, e.target),
 xStart = GET_X(e.xStart, e.target), yStart = GET_Y(e.yStart, e.target),
 id = e.id, xDelta = e.xDelta, yDelta = e.yDelta, phase = e.phase}
 local responses = {} for i = 1, #GAME_objects[name]._listeners do
 local response = GAME_objects[name]._listeners[i](e) if response ~= nil then
 table.insert(responses, response) end end return responses[#responses]
 end end) if isComplete and result ~= nil then return result end return true end) end end)
 end)
 pcall(function() funsP['b0931023-d2b8-4b34-8e40-dcfda5e7f744'] = function(e) if GAME.hash == hash then
 if (e.phase == 'ended' or e.phase == 'cancelled') and e._ccode_event.isTouch then
 local varsE, tablesE = {}, {} a = COPY_TABLE(e, true)
 pcall(function() local name = ('бойцы') local obj = GAME_objects[name] local function doTo(obj)
 transition.to(obj, {onComplete =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onRepeat =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 onPause =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onResume =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end, onCancel =  function(e) pcall(function() if GAME.hash == hash then a(e) end end) end,
 time = (0.3) * 1000, iterations = (1), transition = easing.linear,
 alpha = (100) / 100}) end if 'GAME_objects' == 'GAME_tags'
 then pcall(function() local function doTag(tag) for _, child in ipairs(obj) do if child[2]
 == 'tags' then doTag(child[1]) else doTo(GAME.group[child[2]][child[1]])
 end end end doTag(name) end) else doTo(obj) end end)
 end end end end)
 timer.new(1, 1, function()
 pcall(function() local name = ('бойцы')
 table.insert(GAME_objects[name]._listeners, funsP['b0931023-d2b8-4b34-8e40-dcfda5e7f744'])
 if not GAME_objects[name].hasListener then GAME_objects[name].hasListener = true
 GAME_objects[name]:addEventListener('touch',
 function(e) local isComplete, result = pcall(function() if GAME.hash == hash then handlerTouch(e)
 e.isTouch = e.target._touch GAME.group.const.touch_x, GAME.group.const.touch_y = e.x, e.y
 if e.phase == 'began' then e.target._touch, GAME.group.const.touch = true, true
 if GAME.multi then display.getCurrentStage():setFocus(e.target, e.id)
 else display.getCurrentStage():setFocus(e.target) end
 elseif e.phase == 'ended' or e.phase == 'cancelled' then
 e.target._touch, GAME.group.const.touch = false, false
 if GAME.multi then display.getCurrentStage():setFocus(e.target, nil) else
 display.getCurrentStage():setFocus(nil) for name, object in pairs(GAME_objects) do
 if object._touch then GAME_objects[name]._touch = false end end end end
 e = {_ccode_event = e, name = e.target.name, x = GET_X(e.x, e.target), y = GET_Y(e.y, e.target),
 xStart = GET_X(e.xStart, e.target), yStart = GET_Y(e.yStart, e.target),
 id = e.id, xDelta = e.xDelta, yDelta = e.yDelta, phase = e.phase}
 local responses = {} for i = 1, #GAME_objects[name]._listeners do
 local response = GAME_objects[name]._listeners[i](e) if response ~= nil then
 table.insert(responses, response) end end return responses[#responses]
 end end) if isComplete and result ~= nil then return result end return true end) end end)
 end) 
 function onStart2()
 pcall(function() local function event() local varsE, tablesE = {}, {} pcall(function() funsC['custom2'](('карты'), ('карты'), ('Minecraft'), (15), (0), (150), (100), (- 200), (- 600)) end) pcall(function() funsC['custom2'](('бойцы'), ('бойцы'), ('Minecraft'), (15), (0), (150), (100), (200), (- 600)) end) pcall(function() funsC['custom2'](('играть'), ('Играть'), ('Minecraft'), (15), (0), (300), (100), (0), (- 500)) end)
 end event() end)
 pcall(function() local function event() local varsE, tablesE = {}, {}
 pcall(function() local name = ('враг') pcall(function() GAME_objects[name]:removeSelf() end)
 GAME_objects[name] = display.newRoundedRect(GAME.group, (SET_X((math['random'] ( 50 , 500 )))), (SET_Y((- math['random'] ( 100 , 400 )))), (100), (100), (10))
 GAME_objects[name]._width = GAME_objects[name].width
 GAME_objects[name]._height = GAME_objects[name].height
 GAME_objects[name]._density = 1 GAME_objects[name]._bounce = 0
 GAME_objects[name]._friction = 0 GAME_objects[name]._gravity = 1
 GAME_objects[name]._body = '' GAME_objects[name]._hitbox = {}
 GAME_objects[name]._link = '' GAME_objects[name]._name = 'SHAPE'
 GAME_objects[name]._touch = false GAME_objects[name]._tag = 'TAG'
 GAME_objects[name]._data = {} GAME_objects[name]._baseDir = system.DocumentsDirectory
 GAME_objects[name]._listeners = {}
 GAME_objects[name]._size, GAME_objects[name].name = 1, name end)
 end event() end) end end script() 
 local function script() local varsS, tablesS, funsS = CLASS(), {}, {} 
 function onStart3()
 pcall(function() local function event() local varsE, tablesE = {}, {}
 end event() end) end end script() 
 onStart1() 
 onStart2() 
 onStart3() end) GAME.isStarted = true
