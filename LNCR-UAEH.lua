local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v2="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";local function v3(v46) local v47=0 -0 ;while true do if (v47==(0 + 0)) then v46=string.gsub(v46,"[^" .. v2 .. "=]" ,"");return (v46:gsub(".",function(v104) local v105=0 + 0 ;local v106;local v107;while true do if (v105==(519 -(114 + 404))) then for v123=494 -(106 + 382) ,412 -(306 + 105) , -(2 -1) do v106=v106 .. (((((v107%((429 -(166 + 261))^v123)) -(v107%((1290 -(993 + 295))^(v123-(508 -(289 + 218))))))>(1344 -(1213 + 131))) and "1") or "0") ;end return v106;end if (v105==(0 + 0)) then if (v104=="=") then return "";end v106,v107="",v2:find(v104) -(1 + 0) ;v105=3 -2 ;end end end):gsub("%d%d%d?%d?%d?%d?%d?%d?",function(v108) local v109=0 + 0 ;local v110;while true do if (1==v109) then local v119=0 -0 ;while true do if (v119==(859 -(814 + 45))) then for v124=2 -1 ,1 + 7 do v110=v110 + (((v108:sub(v124,v124)=="1") and ((1 + 1)^((893 -(261 + 624)) -v124))) or (0 + 0)) ;end return string.char(v110);end end end if (v109==(0 -0)) then if ( #v108~=(1088 -(1020 + 60))) then return "";end v110=1423 -(630 + 793) ;v109=2 -1 ;end end end));end end end local function v4(v48,v49) local v50=0 -0 ;local v51;while true do local v61=0 -0 ;while true do if (v61==(0 + 0)) then if (v50==(0 -0)) then v51={};for v120=1748 -(760 + 987) , #v48 do local v121=string.byte(v48:sub(v120,v120));local v122=string.byte(v49:sub(((v120-(1914 -(1789 + 124)))% #v49) + (2 -1) ,((v120-(767 -(745 + 21)))% #v49) + 1 + 0 ));table.insert(v51,string.char(bit32.bxor(v121,v122)));end v50=585 -(57 + 527) ;end if (v50==(1428 -(41 + 1386))) then return table.concat(v51);end break;end end end end local v5="DQwQAgwUAAcT";local v6="Z@M@S@U";local v7=getgenv().ZamasuKey or "" ;local v8=v4(v3(v5),v6);if (v7~=v8) then v1:Kick("bro are you serious?");end local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v9=game:GetService("TweenService");local v10=game:GetService("UserInputService");local v11=game:GetService("HttpService");local v12="https://raw.githubusercontent.com/Jotarokujo749/Zamasuhub1/refs/heads/main/77Z.lua";local v13="https://raw.githubusercontent.com/Jotarokujo749/Zamasuhub1/refs/heads/main/4r5en4l.lua";local v14="zamasuhubontop";local v15=Instance.new("ScreenGui",v1:WaitForChild("PlayerGui"));v15.Name="ZAMASU_LAUNCHER";v15.ResetOnSpawn=false;local v18=Instance.new("Frame");v18.Size=UDim2.new(103 -(17 + 86) ,1155 -735 ,0 -0 ,2 + 218 );v18.Position=UDim2.new(0.5 + 0 , -(1265 -(87 + 968)),2 -1 ,166 -(122 + 44) );v18.BackgroundColor3=Color3.fromRGB(88 -68 ,34 -14 ,19 + 1 );v18.Parent=v15;v18.AnchorPoint=Vector2.new(0.5 -0 ,0.5 + 0 );Instance.new("UICorner",v18).CornerRadius=UDim.new(0 -0 ,1423 -(447 + 966) );v9:Create(v18,TweenInfo.new(2 -1 ,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(1817.5 -(1703 + 114) ,701 -(376 + 325) ,0.5 -0 ,0 -0 )}):Play();local v25=Instance.new("TextLabel",v18);v25.Size=UDim2.new(1 + 0 , -(1277 -(1043 + 214)),0 + 0 ,88 -48 );v25.Position=UDim2.new(14 -(9 + 5) ,386 -(85 + 291) ,1265 -(243 + 1022) ,76 -56 );v25.Text="Welcome to ZAMASU HUB, " .. v1.Name .. "!" ;v25.TextColor3=Color3.fromRGB(211 + 44 ,535 -(53 + 267) ,1180 -(1123 + 57) );v25.BackgroundTransparency=414 -(15 + 398) ;v25.Font=Enum.Font.GothamBlack;v25.TextSize=18 + 4 ;v25.TextWrapped=true;local v35=Instance.new("TextButton",v18);v35.Size=UDim2.new(254.4 -(163 + 91) ,0,1930 -(1869 + 61) ,35);v35.Position=UDim2.new(0.3 + 0 ,0 -0 ,850.7 -(20 + 830) ,0 -0 );v35.Text="Next";v35.BackgroundColor3=Color3.fromRGB(7 + 43 ,68 -18 ,196 -(116 + 10) );v35.TextColor3=Color3.new(1 + 0 ,1475 -(1329 + 145) ,972 -(140 + 831) );v35.Font=Enum.Font.GothamBold;v35.TextSize=1868 -(1409 + 441) ;Instance.new("UICorner",v35).CornerRadius=UDim.new(718 -(15 + 703) ,4 + 4 );local function v45() local v52=0 -0 ;local v53;local v54;while true do if ((439 -(262 + 176))==v52) then v53.Position=UDim2.new(1721.1 -(345 + 1376) ,405 -(118 + 287) ,688.35 -(198 + 490) ,0 -0 );v53.PlaceholderText="Enter your key...";v53.TextColor3=Color3.new(2 -1 ,1207 -(696 + 510) ,1);v52=3 -1 ;end if (v52==(1268 -(1091 + 171))) then Instance.new("UICorner",v54).CornerRadius=UDim.new(0,1 + 5 );v54.MouseButton1Click:Connect(function() if (v53.Text:lower()==v14:lower()) then showLoadingScreen();else v53.Text="";v53.PlaceholderText="❌ Invalid Key!";end end);break;end if (v52==(9 -6)) then local v66=977 -(553 + 424) ;while true do if (v66==(3 -2)) then v54.Size=UDim2.new(374.5 -(123 + 251) ,0 -0 ,0,728 -(208 + 490) );v52=4 + 0 ;break;end if (v66==(0 + 0)) then Instance.new("UICorner",v53).CornerRadius=UDim.new(0 + 0 ,3 + 3 );v54=Instance.new("TextButton",v18);v66=837 -(660 + 176) ;end end end if (v52==(1 + 1)) then v53.BackgroundColor3=Color3.fromRGB(70,195 -125 ,292 -(14 + 188) );v53.Font=Enum.Font.GothamBold;v53.TextSize=691 -(534 + 141) ;v52=2 + 1 ;end if (v52==(0 + 0)) then v18:ClearAllChildren();v53=Instance.new("TextBox",v18);v53.Size=UDim2.new(0.8 + 0 ,753 -(239 + 514) ,0 -0 ,55 -20 );v52=1 + 0 ;end if (v52==5) then v54.TextColor3=Color3.new(2 -1 ,1 + 0 ,1 + 0 );v54.Font=Enum.Font.GothamBold;v54.TextSize=412 -(115 + 281) ;v52=13 -7 ;end if (v52==(1206 -(373 + 829))) then v54.Position=UDim2.new(731.25 -(476 + 255) ,0 + 0 ,0.65 + 0 ,0 -0 );v54.Text="Verify";v54.BackgroundColor3=Color3.fromRGB(72 -42 ,440 -320 ,30);v52=872 -(550 + 317) ;end end end function showLoadingScreen() local v55=0 -0 ;local v56;local v57;local v58;local v59;local v60;while true do if (v55==7) then v60.BorderSizePixel=0;Instance.new("UICorner",v60).CornerRadius=UDim.new(0 -0 ,8 -2 );v9:Create(v60,TweenInfo.new(221 -(42 + 174) ,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Size=UDim2.new(2 -1 ,285 -(134 + 151) ,1,1665 -(970 + 695) )}):Play();task.delay(5 + 0 ,function() local v111=game.PlaceId;local v112=((v111==(545928298 -259837869)) and v13) or ((v111==(142825281 -(582 + 1408))) and v12) or nil ;if v112 then v15:Destroy();loadstring(game:HttpGet(v112))();else v58.Text="❌ Game not supported";end end);break;end if (v55==(13 -9)) then v58.Font=Enum.Font.GothamBold;v58.TextSize=19 -3 ;coroutine.wrap(function() while wait(0.5 + 0 ) do v58.Text=((v58.Text=="") and "Loading Script...") or "" ;end end)();v59=Instance.new("Frame",v18);v55=18 -13 ;end if (v55==(1824 -(1195 + 629))) then v18:ClearAllChildren();v56=(v10.TouchEnabled and "Mobile") or (v10.GamepadEnabled and "Console") or "PC" ;v57=Instance.new("TextLabel",v18);v57.Size=UDim2.new(1 -0 , -(261 -(187 + 54)),780 -(162 + 618) ,29 + 11 );v55=1 + 0 ;end if (v55==(1 -0)) then v57.Position=UDim2.new(0 -0 ,1 + 9 ,0.2 -0 ,1636 -(1373 + 263) );v57.Text="Platform Detected: " .. v56 ;v57.TextColor3=Color3.fromRGB(1916 -(1477 + 184) ,346 -91 ,1255 -(451 + 549) );v57.BackgroundTransparency=1 + 0 ;v55=2 -0 ;end if (v55==(9 -3)) then Instance.new("UICorner",v59).CornerRadius=UDim.new(1384 -(746 + 638) ,3 + 3 );v60=Instance.new("Frame",v59);v60.Size=UDim2.new(0 -0 ,341 -(218 + 123) ,1 + 0 ,1581 -(1535 + 46) );v60.BackgroundColor3=Color3.fromRGB(556 -(41 + 435) ,255,1081 -(938 + 63) );v55=7 + 0 ;end if (v55==(1130 -(936 + 189))) then v59.Size=UDim2.new(0.8 + 0 ,560 -(306 + 254) ,0 + 0 ,1 + 11 );v59.Position=UDim2.new(0.1,0,0.75 -0 ,1467 -(899 + 568) );v59.BackgroundColor3=Color3.fromRGB(58 -18 ,27 + 13 ,145 -85 );v59.BorderSizePixel=603 -(268 + 335) ;v55=5 + 1 ;end if (v55==(293 -(60 + 230))) then v58.Position=UDim2.new(572 -(426 + 146) ,0 + 0 ,1456.45 -(282 + 1174) ,811 -(569 + 242) );v58.Text="Game Detected...";v58.BackgroundTransparency=2 -1 ;v58.TextColor3=Color3.new(1 + 0 ,2 -1 ,2 -1 );v55=1 + 3 ;end if (v55==(613 -(602 + 9))) then v57.Font=Enum.Font.GothamBold;v57.TextSize=1044 -(706 + 318) ;v58=Instance.new("TextLabel",v18);v58.Size=UDim2.new(873 -(826 + 46) ,947 -(245 + 702) ,0,1281 -(721 + 530) );v55=1274 -(945 + 326) ;end end end v35.MouseButton1Click:Connect(v45); -- ⚠️ WARNING: integrity protected! --[[ .____ ________ ___. _____ __ | | __ _______ \_____ \\_ |___/ ____\_ __ ______ ____ _____ _/ |_ ___________ | | | | \__ \ / | \| __ \ __\ | \/ ___// ___\\__ \\ __\/ _ \_ __ \ | |___| | // __ \_/ | \ \_\ \ | | | /\___ \\ \___ / __ \| | ( <_> ) | \/ |_______ \____/(____ /\_______ /___ /__| |____//____ >\___ >____ /__| \____/|__| \/ \/ \/ \/ \/ \/ \/ \_Welcome to LuaObfuscator.com (Alpha 0.10.8) ~ Much Love, Ferib ]]--
