local function v0(v136) local v137={"z","m","s","-","9","8","4","5"};return table.concat(v137);end local v1=string.reverse("yeKusaZamaZ");local v2=(getgenv and getgenv()[v1]) or (shared and shared[v1]) ;task.spawn(function() local v138=0 -0 ;while true do if (v138==(341 -(218 + 123))) then task.wait((1581.6 -(1535 + 46)) + math.random() );if (v2~=v0()) then game.Players.LocalPlayer:Kick("bro are you serious?");end break;end end end);local v3=game:GetService("Players");local v4=v3.LocalPlayer;local v5=game:GetService("TweenService");local v6=game:GetService("UserInputService");local v7=game:GetService("RunService");local v8={"Farm","Coin","Teleport","Settings","ESP","Client","Sheriff","Statut"};local v9={};local v10=Instance.new("ScreenGui",v4:WaitForChild("PlayerGui"));v10.Name="ZAMASU_HUB_BAB";v10.ResetOnSpawn=false;v10.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;local v15=Instance.new("Frame");v15.Size=UDim2.new(0 + 0 ,389 + 131 ,1467 -(899 + 568) ,84 + 256 );v15.Position=UDim2.new(0.5 + 0 , -(629 -369),0.5 -0 , -(773 -(268 + 335)));v15.BackgroundColor3=Color3.fromRGB(1895 -(446 + 1434) ,305 -(60 + 230) ,587 -(426 + 146) );v15.BorderSizePixel=0 + 0 ;v15.Parent=v10;v15.Active=true;v15.Draggable=true;v15.Visible=false;Instance.new("UICorner",v15).CornerRadius=UDim.new(1847 -(559 + 1288) ,1943 -(609 + 1322) );local v25=Instance.new("UIStroke",v15);v25.Thickness=1458 -(282 + 1174) ;v25.Color=Color3.fromRGB(635 -465 ,811 -(569 + 242) ,734 -479 );v25.Transparency=0.15 + 0 ;local v29=Instance.new("TextLabel",v15);v29.Size=UDim2.new(1025 -(706 + 318) ,1251 -(721 + 530) ,1271 -(945 + 326) ,124 -74 );v29.Position=UDim2.new(0 + 0 ,0 -0 ,700 -(271 + 429) ,0 + 0 );v29.BackgroundTransparency=1;v29.Text="ZAMASU HUB";v29.TextColor3=Color3.fromRGB(468 -213 ,1715 -(1408 + 92) ,1086 -(461 + 625) );v29.Font=Enum.Font.GothamBlack;v29.TextSize=1316 -(993 + 295) ;v29.TextStrokeTransparency=0.4 + 0 ;v29.TextStrokeColor3=Color3.new(0 + 0 ,1171 -(418 + 753) ,0 + 0 );local v40=Instance.new("ScrollingFrame",v15);v40.Name="Sidebar";v40.Size=UDim2.new(0 + 0 ,36 + 84 ,1 + 0 , -60);v40.Position=UDim2.new(529 -(406 + 123) ,1779 -(1749 + 20) ,0 + 0 ,1382 -(1249 + 73) );v40.BackgroundColor3=Color3.fromRGB(9 + 16 ,1170 -(466 + 679) ,59 -34 );v40.BorderSizePixel=0 -0 ;v40.ScrollBarThickness=1904 -(106 + 1794) ;v40.AutomaticCanvasSize=Enum.AutomaticSize.Y;v40.ScrollingDirection=Enum.ScrollingDirection.Y;Instance.new("UICorner",v40).CornerRadius=UDim.new(0 + 0 ,3 + 5 );local v52=Instance.new("UIListLayout",v40);v52.Padding=UDim.new(0 -0 ,10 -6 );v52.SortOrder=Enum.SortOrder.LayoutOrder;local v56=Instance.new("UIPadding",v40);v56.PaddingTop=UDim.new(114 -(4 + 110) ,594 -(57 + 527) );v56.PaddingLeft=UDim.new(1427 -(41 + 1386) ,108 -(17 + 86) );v56.PaddingRight=UDim.new(0 + 0 ,11 -6 );local v60=Instance.new("Frame",v15);v60.Size=UDim2.new(843 -(497 + 345) , -140,2 -1 , -(226 -(122 + 44)));v60.Position=UDim2.new(0 -0 ,100 + 40 ,0,133 -73 );v60.BackgroundTransparency=1;v60.Name="PageContainer";local function v65(v139) local v140=0 -0 ;local v141;local v142;local v143;while true do if (v140==(4 + 0)) then v143.PaddingRight=UDim.new(0 + 0 ,20 -10 );v9[v139]=v141;return v141;end if (v140==(7 -5)) then v142=Instance.new("UIListLayout",v141);v142.Padding=UDim.new(65 -(30 + 35) ,6 + 0 );v142.SortOrder=Enum.SortOrder.LayoutOrder;v140=7 -4 ;end if (v140==(1 + 0)) then v141.Position=UDim2.new(1257 -(1043 + 214) ,0 -0 ,0,0 + 0 );v141.Visible=false;v141.BackgroundTransparency=1213 -(323 + 889) ;v140=5 -3 ;end if (v140==(0 + 0)) then v141=Instance.new("Frame",v60);v141.Name=v139;v141.Size=UDim2.new(581 -(361 + 219) ,0,321 -(53 + 267) ,0 + 0 );v140=3 -2 ;end if (v140==(416 -(15 + 398))) then v143=Instance.new("UIPadding",v141);v143.PaddingTop=UDim.new(982 -(18 + 964) ,10);v143.PaddingLeft=UDim.new(0 -0 ,26 -16 );v140=3 + 1 ;end end end local function v66(v144) local v145=0 + 0 ;while true do if (v145==(850 -(20 + 830))) then for v338,v339 in pairs(v9) do v339.Visible=false;end if v9[v144] then v9[v144].Visible=true;end break;end end end local v67=Instance.new("ImageButton",v10);v67.Size=UDim2.new(0 + 0 ,176 -(116 + 10) ,0 + 0 ,788 -(542 + 196) );v67.Position=UDim2.new(0.5 -0 , -25,0 + 0 ,6 + 4 );v67.BackgroundTransparency=1 + 0 ;v67.Image="rbxassetid://138068835442753";v67.ZIndex=10;v67.Draggable=true;local v74=Instance.new("Sound",v67);v74.SoundId="rbxassetid://9118823104";v74.Volume=1 + 0 ;v67.MouseButton1Click:Connect(function() local v146=0 -0 ;while true do if (v146==(0 -0)) then v15.Visible= not v15.Visible;v74:Play();break;end end end);local function v77(v147) local v148=1551 -(1126 + 425) ;local v149;local v150;local v151;local v152;local v153;while true do if (v148==(406 -(118 + 287))) then function v153(v341) local v342=0 -0 ;local v343;while true do if (v342==(1121 -(118 + 1003))) then v343=v341.Position-v152 ;v147.Position=UDim2.new(v151.X.Scale,v151.X.Offset + v343.X ,v151.Y.Scale,v151.Y.Offset + v343.Y );break;end end end v147.InputBegan:Connect(function(v344) if (v344.UserInputType==Enum.UserInputType.MouseButton1) then v149=true;v152=v344.Position;v151=v147.Position;v344.Changed:Connect(function() if (v344.UserInputState==Enum.UserInputState.End) then v149=false;end end);end end);v148=5 -3 ;end if ((1455 -(666 + 787))==v148) then v147.InputChanged:Connect(function(v345) if (v345.UserInputType==Enum.UserInputType.MouseMovement) then v150=v345;end end);v6.InputChanged:Connect(function(v346) if ((v346==v150) and v149) then v153(v346);end end);break;end if (v148==(425 -(360 + 65))) then local v283=0;while true do if (v283==(1 + 0)) then v148=378 -(142 + 235) ;break;end if ((0 -0)==v283) then v149,v150,v151,v152=nil;v153=nil;v283=1 + 0 ;end end end end end v77(v15);v77(v67);local v78={};local v79={};function createToggle(v154,v155,v156,v157) local v158=0 -0 ;local v159;local v160;local v161;local v162;local v163;while true do if (v158==7) then v161.MouseButton1Click:Connect(function() local v347=0 + 0 ;local v348;while true do if (v347==(0 -0)) then v348=899 -(503 + 396) ;while true do if (v348==(978 -(553 + 424))) then if v157 then v157(v162);end break;end if ((0 -0)==v348) then v162= not v162;v163();v348=1 + 0 ;end end break;end end end);v163();v78[v155]=function() return v162;end;break;end if (5==v158) then v161.Font=Enum.Font.Gotham;v161.TextSize=20 + 0 ;Instance.new("UICorner",v161).CornerRadius=UDim.new(0 + 0 ,3 + 3 );v158=4 + 2 ;end if (v158==(2 -1)) then v160=Instance.new("TextLabel",v159);v160.Size=UDim2.new(0.7 + 0 ,0 -0 ,2 -1 ,0 + 0 );v160.Text=v155;v158=9 -7 ;end if (v158==(757 -(239 + 514))) then local v291=0 + 0 ;while true do if ((0 + 0)==v291) then v161.Size=UDim2.new(1329.25 -(797 + 532) ,0 + 0 ,0.8,0 -0 );v161.Position=UDim2.new(1244.75 -(485 + 759) ,0 -0 ,0.1 + 0 ,0 -0 );v291=1203 -(373 + 829) ;end if (v291==(732 -(476 + 255))) then v161.BackgroundColor3=Color3.fromRGB(1170 -(369 + 761) ,40,24 + 16 );v158=5;break;end end end if (v158==(0 + 0)) then v159=Instance.new("Frame",v154);v159.Size=UDim2.new(1 -0 , -(18 -8),0 -0 ,36);v159.BackgroundTransparency=239 -(64 + 174) ;v158=3 -2 ;end if ((1 + 2)==v158) then v160.TextSize=23 -7 ;v160.TextXAlignment=Enum.TextXAlignment.Left;v161=Instance.new("TextButton",v159);v158=340 -(144 + 192) ;end if (v158==(218 -(42 + 174))) then local v297=0 + 0 ;while true do if (v297==0) then v160.TextColor3=Color3.new(1481 -(641 + 839) ,1 + 0 ,1);v160.BackgroundTransparency=1 + 0 ;v297=2 -1 ;end if (v297==(1685 -(1466 + 218))) then v160.Font=Enum.Font.GothamBold;v158=2 + 1 ;break;end end end if (v158==(1154 -(556 + 592))) then v162=v156 or false ;v163=nil;function v163() local v349=0 + 0 ;while true do if (v349==(1504 -(363 + 1141))) then v161.Text=(v162 and "✅") or "❌" ;v161.TextColor3=(v162 and Color3.fromRGB(1660 -(1183 + 397) ,776 -521 ,274 -194 )) or Color3.fromRGB(187 + 68 ,60 + 20 ,2055 -(1913 + 62) ) ;break;end end end v158=5 + 2 ;end end end for v164,v165 in ipairs(v8) do local v166=0;local v167;local v168;local v169;while true do if (v166==(2 -1)) then v167.TextSize=1949 -(565 + 1368) ;v167.TextColor3=Color3.new(1478 -(29 + 1448) ,3 -2 ,3 -2 );v167.BackgroundColor3=Color3.fromRGB(1696 -(1477 + 184) ,47 -12 ,24 + 11 );v167.AutoButtonColor=false;v166=2 + 0 ;end if (v166==(856 -(564 + 292))) then v167=Instance.new("TextButton",v40);v167.Size=UDim2.new(1 + 0 ,0,0 + 0 ,61 -25 );v167.Text=v165;v167.Font=Enum.Font.GothamBold;v166=2 -1 ;end if (v166==(307 -(244 + 60))) then Instance.new("UICorner",v167).CornerRadius=UDim.new(0 + 0 ,5 + 1 );v169=v65(v165);if (v164==(477 -(41 + 435))) then v169.Visible=true;end v167.MouseButton1Click:Connect(function() local v350=1001 -(938 + 63) ;while true do if (v350==(1 + 0)) then wait(1125.1 -(936 + 189) );v5:Create(v60,TweenInfo.new(0.3 + 0 ,Enum.EasingStyle.Quad),{Position=UDim2.new(0 + 0 ,1753 -(1565 + 48) ,0 + 0 ,23 + 37 )}):Play();break;end if (v350==(1138 -(782 + 356))) then v66(v165);v5:Create(v60,TweenInfo.new(267.3 -(176 + 91) ,Enum.EasingStyle.Quad),{Position=UDim2.new(1026 -(834 + 192) ,364 -224 ,0,70)}):Play();v350=1 + 0 ;end end end);break;end if (v166==(2 -0)) then v167.BorderSizePixel=1092 -(975 + 117) ;v168=Instance.new("UIStroke",v167);v168.Color=Color3.fromRGB(2045 -(157 + 1718) ,0 + 0 ,905 -650 );v168.Thickness=1 -0 ;v166=10 -7 ;end end end createToggle(v9['Coin'],"TP to Coins",false,function(v170) local v171=1018 -(697 + 321) ;local v172;while true do if (v171==(0 + 0)) then v172=0 -0 ;while true do if (v172==(362 -(112 + 250))) then getgenv().CoinTP=v170;task.spawn(function() while getgenv().CoinTP do local v429=0 -0 ;local v430;while true do if (v429==(2 -1)) then task.wait(0.5 + 0 );break;end if (v429==(0 -0)) then local v461=0;while true do if (v461==(0 -0)) then v430=v4.Character and v4.Character:FindFirstChild("HumanoidRootPart") ;if v430 then for v514,v515 in ipairs(workspace:GetDescendants()) do if  not getgenv().CoinTP then break;end if (v515:IsA("BasePart") and (v515.Name=="Coin_Server")) then v430.CFrame=v515.CFrame + Vector3.new(0 + 0 ,1.5 + 0 ,1227 -(322 + 905) ) ;task.wait(2.9 + 0 );end end end v461=612 -(602 + 9) ;end if (v461==(1190 -(449 + 740))) then v429=873 -(826 + 46) ;break;end end end end end end);break;end end break;end end end);createToggle(v9['Coin'],"Autofarm Coins",false,function(v173) local v174=947 -(245 + 702) ;while true do if (v174==(0 -0)) then getgenv().Autofarm=v173;if  not getgenv().AutofarmMethod then getgenv().AutofarmMethod="Coins";end v174=2 -1 ;end if (v174==1) then task.spawn(function() while getgenv().Autofarm do task.wait();local v368=v4.Character and v4.Character:FindFirstChild("HumanoidRootPart") ;local v369=v4:FindFirstChild("PlayerGui");local v370=v369 and v369:FindFirstChild("MainGUI") ;local v371=v370 and v370:FindFirstChild("Game") ;local v372=v371 and v371:FindFirstChild("CashBag") ;if (v372 and v372.Visible and v368) then if (getgenv().AutofarmMethod=="Coins") then local v444=0 + 0 ;local v445;while true do if (v444==(1898 -(260 + 1638))) then v445=workspace:FindFirstChild("CoinContainer",true);if v445 then for v510,v511 in ipairs(v445:GetDescendants()) do if ((v511.Name=="Coin_Server") and v511:IsA("BasePart")) then local v516=440 -(382 + 58) ;while true do if (v516==(0 -0)) then v368.CFrame=v511.CFrame + Vector3.new(0 + 0 ,1.5 -0 ,0 -0 ) ;task.wait(1207.9 -(902 + 303) );break;end end end end end break;end end elseif (getgenv().AutofarmMethod=="XP") then local v462=0 -0 ;while true do if (v462==(0 -0)) then v368.CFrame=CFrame.new( -(11.123000000000005 + 110),1.274000000000001 + 137 ,1728.946 -(1121 + 569) );task.wait(215.2 -(22 + 192) );break;end end end else task.wait(684.2 -(483 + 200) );end end end);break;end end end);local v80=Instance.new("Frame",v9['Coin']);v80.Size=UDim2.new(1464 -(1404 + 59) , -(10 + 0),0 -0 ,3 + 33 );v80.BackgroundTransparency=1 -0 ;local v83=Instance.new("TextLabel",v80);v83.Size=UDim2.new(765.5 -(468 + 297) ,562 -(334 + 228) ,3 -2 ,0 -0 );v83.Text="Autofarm Method";v83.TextColor3=Color3.new(1 -0 ,1 + 0 ,237 -(141 + 95) );v83.BackgroundTransparency=1 + 0 ;v83.Font=Enum.Font.GothamBold;v83.TextSize=41 -25 ;v83.TextXAlignment=Enum.TextXAlignment.Left;local v93=Instance.new("TextButton",v80);v93.Size=UDim2.new(0.45 -0 ,0 + 0 ,0.8 -0 ,0 + 0 );v93.Position=UDim2.new(0.5 + 0 ,1283 -(1035 + 248) ,21.1 -(20 + 1) ,0 -0 );v93.BackgroundColor3=Color3.fromRGB(40,24 + 16 ,1173 -(549 + 584) );v93.Font=Enum.Font.Gotham;v93.TextSize=14;v93.TextColor3=Color3.new(686 -(314 + 371) ,3 -2 ,164 -(92 + 71) );v93.Text="Coins";Instance.new("UICorner",v93).CornerRadius=UDim.new(0 + 0 ,3 + 3 );local v103="Coins";v93.MouseButton1Click:Connect(function() local v175=0 -0 ;while true do if (v175==(766 -(574 + 191))) then getgenv().AutofarmMethod=v103;break;end if (v175==0) then if (v103=="Coins") then v103="XP";else v103="Coins";end v93.Text=v103;v175=1 + 0 ;end end end);createToggle(v9['Farm'],"Kill Aura",false,function(v176) getgenv().KnifeAura=v176;end);function createInput(v178,v179,v180,v181) local v182=Instance.new("Frame",v178);v182.Size=UDim2.new(2 -1 , -10,0 + 0 ,1415 -(1055 + 324) );v182.BackgroundTransparency=850 -(254 + 595) ;local v185=Instance.new("TextLabel",v182);v185.Size=UDim2.new(126.5 -(55 + 71) ,0 -0 ,1791 -(573 + 1217) ,0 -0 );v185.Text=v179;v185.TextColor3=Color3.new(1 + 0 ,1,1 -0 );v185.BackgroundTransparency=2 -1 ;v185.Font=Enum.Font.GothamBold;v185.TextSize=955 -(714 + 225) ;v185.TextXAlignment=Enum.TextXAlignment.Left;local v195=Instance.new("TextBox",v182);v195.Size=UDim2.new(0.45 -0 ,0 -0 ,0.8 -0 ,0);v195.Position=UDim2.new(0.5 -0 ,0 + 0 ,0.1 -0 ,688 -(364 + 324) );v195.BackgroundColor3=Color3.fromRGB(109 -69 ,95 -55 ,5 + 35 );v195.Font=Enum.Font.Gotham;v195.TextSize=20 -6 ;v195.TextColor3=Color3.new(4 -3 ,807 -(118 + 688) ,49 -(25 + 23) );v195.Text=tostring(v180 or "" );Instance.new("UICorner",v195).CornerRadius=UDim.new(0 + 0 ,1892 -(927 + 959) );v195.FocusLost:Connect(function() local v245=0 -0 ;local v246;while true do if (v245==(732 -(16 + 716))) then v246=tonumber(v195.Text);if v246 then local v408=0 -0 ;while true do if (0==v408) then v79[v179]=v246;if v181 then v181(v246);end break;end end else v195.Text=tostring(v180 or "" );end break;end end end);v79[v179]=v180;end createInput(v9['Farm'],"Knife Range",999,function(v206) getgenv().KnifeRange=tonumber(v206);end);local v104=tick();v7.Heartbeat:Connect(function() local v208=97 -(11 + 86) ;local v209;local v210;while true do if (v208==(3 -2)) then v210=v4.Character and v4.Character:FindFirstChild("HumanoidRootPart") ;if (v209 and v210) then for v410,v411 in ipairs(v3:GetPlayers()) do if ((v411~=v4) and v411.Character and v411.Character:FindFirstChild("HumanoidRootPart")) then local v431=0 -0 ;local v432;while true do if ((285 -(175 + 110))==v431) then v432=(v210.Position-v411.Character.HumanoidRootPart.Position).Magnitude;if (v432<=(getgenv().KnifeRange or (62 -37))) then firetouchinterest(v411.Character.HumanoidRootPart,v209.Handle,4 -3 );firetouchinterest(v411.Character.HumanoidRootPart,v209.Handle,1796 -(503 + 1293) );v104=tick();end break;end end end end end break;end if (v208==(0 -0)) then if ( not getgenv().KnifeAura or ((tick() -v104)<(0.15 + 0))) then return;end v209=v4.Backpack:FindFirstChild("Knife") or v4.Character:FindFirstChild("Knife") ;v208=3 -2 ;end end end);createToggle(v9['ESP'],"Player ESP",false,function(v211) getgenv().ESP=v211;for v247,v248 in ipairs(v3:GetPlayers()) do if ((v248~=v4) and v248.Character and v248.Character:FindFirstChild("Head")) then local v313=0 + 0 ;local v314;while true do if (v313==(470 -(224 + 246))) then v314=v248.Character:FindFirstChild("ZamasuESP");if (v211 and  not v314) then local v433=0 -0 ;local v434;local v435;local v436;while true do if (v433==1) then v436=nil;while true do if (v434==(1063 -(810 + 251))) then v436.Size=UDim2.new(1,0 + 0 ,1 + 0 ,0 + 0 );v436.BackgroundTransparency=1 + 0 ;v436.TextColor3=Color3.new(1 -0 ,3 -2 ,1);v434=516 -(203 + 310) ;end if (v434==3) then v436.Text=v248.Name;v436.TextScaled=true;break;end if (v434==(1993 -(1238 + 755))) then v435=Instance.new("BillboardGui",v248.Character);v435.Name="ZamasuESP";v435.Size=UDim2.new(0,7 + 93 ,1534 -(709 + 825) ,553 -(43 + 490) );v434=734 -(711 + 22) ;end if (v434==(3 -2)) then v435.AlwaysOnTop=true;v435.Adornee=v248.Character.Head;v436=Instance.new("TextLabel",v435);v434=866 -(196 + 668) ;end end break;end if (v433==(0 -0)) then v434=0 -0 ;v435=nil;v433=860 -(240 + 619) ;end end elseif ( not v211 and v314) then v314:Destroy();end break;end end end end end);createToggle(v9['Client'],"Fly",false,function(v213) getgenv().Flying=v213;if v213 then local v258=93 -(4 + 89) ;local v259;while true do if (v258==1) then v259.MaxForce=Vector3.new(24132 + 75868 ,159070 -59070 ,100000);v259.Name="ZMS_Fly";break;end if (v258==(0 -0)) then v259=Instance.new("BodyVelocity",v4.Character.HumanoidRootPart);v259.Velocity=Vector3.new(0 + 0 ,1536 -(35 + 1451) ,1744 -(1344 + 400) );v258=406 -(255 + 150) ;end end else local v260=0 + 0 ;local v261;while true do if (v260==0) then v261=v4.Character.HumanoidRootPart:FindFirstChild("ZMS_Fly");if v261 then v261:Destroy();end break;end end end end);createInput(v9['Client'],"WalkSpeed",13 + 3 );createInput(v9['Client'],"JumpPower",27 + 23 );v7.Heartbeat:Connect(function() local v215=0;local v216;while true do if (v215==0) then v216=v4.Character and v4.Character:FindFirstChild("Humanoid") ;if v216 then local v376=0 -0 ;local v377;while true do if (v376==(0 + 0)) then v377=0 -0 ;while true do if ((1739 -(404 + 1335))==v377) then v216.WalkSpeed=v79['WalkSpeed'] or (6 + 10) ;v216.JumpPower=v79['JumpPower'] or (456 -(183 + 223)) ;break;end end break;end end end break;end end end);local v105={Lobby=Vector3.new( -(147.12338256836 -26),92.27394104004 + 46 ,14.946128845215 + 24 ),Map=Vector3.new( -(69.90824127197266 + 38),475.3498840332031 -(10 + 327) , -(7.622464179992676 + 3))};function createButton(v217,v218,v219) local v220=338 -(118 + 220) ;local v221;while true do if ((1964 -(556 + 1407))==v220) then v221.TextSize=6 + 10 ;v221.TextColor3=Color3.new(450 -(108 + 341) ,1 + 0 ,1207 -(741 + 465) );v221.BackgroundColor3=Color3.fromRGB(147 -112 ,1528 -(711 + 782) ,35);v221.AutoButtonColor=true;v220=3 -1 ;end if (v220==(0 + 0)) then v221=Instance.new("TextButton",v217);v221.Size=UDim2.new(2 -1 , -(9 + 1),469 -(270 + 199) ,12 + 24 );v221.Text=v218;v221.Font=Enum.Font.GothamBold;v220=1820 -(580 + 1239) ;end if (v220==(5 -3)) then v221.BorderSizePixel=0 + 0 ;Instance.new("UICorner",v221).CornerRadius=UDim.new(0 + 0 ,3 + 3 );v221.MouseButton1Click:Connect(v219);break;end end end createButton(v9['Teleport'],"Teleport to Map",function() local v222=0 -0 ;local v223;while true do if (v222==(0 + 0)) then v223=v4.Character and v4.Character:FindFirstChild("HumanoidRootPart") ;if v223 then v223.CFrame=CFrame.new(v105['Map']);end break;end end end);createButton(v9['Teleport'],"Teleport to Lobby",function() local v224=1167 -(645 + 522) ;local v225;while true do if (v224==(1790 -(1010 + 780))) then v225=v4.Character and v4.Character:FindFirstChild("HumanoidRootPart") ;if v225 then v225.CFrame=CFrame.new(v105['Lobby']);end break;end end end);local v106=Instance.new("Frame",v9['Teleport']);v106.Size=UDim2.new(1781 -(389 + 1391) , -(10 + 0),0,23 + 13 );v106.BackgroundTransparency=1 + 0 ;local v109=Instance.new("TextLabel",v106);v109.Size=UDim2.new(0.5,0 -0 ,2 -1 ,1836 -(1045 + 791) );v109.Text="Teleport to Player";v109.TextColor3=Color3.new(2 -1 ,1 -0 ,1);v109.BackgroundTransparency=1 + 0 ;v109.Font=Enum.Font.GothamBold;v109.TextSize=327 -(309 + 2) ;v109.TextXAlignment=Enum.TextXAlignment.Left;local v117=Instance.new("TextButton",v106);v117.Size=UDim2.new(505.45 -(351 + 154) ,1212 -(1090 + 122) ,1574.8 -(1281 + 293) ,266 -(28 + 238) );v117.Position=UDim2.new(0.5,0 -0 ,0.1 -0 ,1559 -(1381 + 178) );v117.BackgroundColor3=Color3.fromRGB(38 + 2 ,99 -59 ,182 -142 );v117.Font=Enum.Font.Gotham;v117.TextSize=12 + 2 ;v117.TextColor3=Color3.new(1,1 + 0 ,1);v117.Text="Select Player";Instance.new("UICorner",v117).CornerRadius=UDim.new(0 -0 ,4 + 2 );local v126=2 -1 ;local v127={};local function v128() v127={};for v249,v250 in ipairs(v3:GetPlayers()) do if (v250~=v4) then table.insert(v127,v250.Name);end end end v128();v117.Text=v127[v126] or "None" ;v117.MouseButton1Click:Connect(function() local v226=470 -(381 + 89) ;local v227;local v228;local v229;while true do if (v226==(2 + 0)) then v117.Text=v127[v126];v227=v127[v126];v226=3 + 0 ;end if (v226==(1695 -(556 + 1139))) then v128();if ( #v127==(0 -0)) then v117.Text="None";return;end v226=1 + 0 ;end if (v226==(2 + 1)) then v228=v3:FindFirstChild(v227);v229=v4.Character and v4.Character:FindFirstChild("HumanoidRootPart") ;v226=1160 -(1074 + 82) ;end if (v226==(8 -4)) then if (v228 and v228.Character and v228.Character:FindFirstChild("HumanoidRootPart") and v229) then v229.CFrame=v228.Character.HumanoidRootPart.CFrame + Vector3.new(1784 -(214 + 1570) ,1458 -(990 + 465) ,0 + 0 ) ;end break;end if (v226==(1 + 0)) then v126=v126 + 1 + 0 ;if (v126> #v127) then v126=2 -1 ;end v226=7 -5 ;end end end);createToggle(v9['Sheriff'],"Auto Kill Murderer",false,function(v230) getgenv().AutoKillMurder=v230;if v230 then task.spawn(function() while getgenv().AutoKillMurder do local v351=1726 -(1668 + 58) ;local v352;local v353;while true do if (v351==(628 -(512 + 114))) then if (v352 and v352.Character and v353 and v352.Character:FindFirstChild("HumanoidRootPart")) then local v447=v352.Character.HumanoidRootPart;local v448=v352.Character:FindFirstChild("Head");local v449=(v353.Position-v447.Position).Unit;local v450=v447.Position + (v449 * (26 -16)) ;v353.CFrame=CFrame.new(v450);if  not v352.Character:FindFirstChild("Highlight_Murder") then local v466=Instance.new("Highlight",v352.Character);v466.Name="Highlight_Murder";v466.FillColor=Color3.fromRGB(255,0 -0 ,0 -0 );v466.OutlineColor=Color3.fromRGB(0 + 0 ,0 + 0 ,0 + 0 );v466.OutlineTransparency=0 -0 ;v466.FillTransparency=1994.2 -(109 + 1885) ;end local v452=v352.Character:FindFirstChild("Murder_Info");if  not v452 then local v472=1469 -(1269 + 200) ;local v473;while true do if ((7 -3)==v472) then v473.TextScaled=true;v473.Font=Enum.Font.GothamBold;v473.Name="Info";break;end if (v472==(817 -(98 + 717))) then v473=Instance.new("TextLabel",v452);v473.Size=UDim2.new(827 -(802 + 24) ,0 -0 ,1 -0 ,0);v473.BackgroundTransparency=1 + 0 ;v472=3;end if (v472==3) then local v501=0 + 0 ;while true do if (v501==(0 + 0)) then v473.TextColor3=Color3.fromRGB(56 + 199 ,0 -0 ,0 -0 );v473.TextStrokeTransparency=0.2;v501=119 -(88 + 30) ;end if (v501==(772 -(720 + 51))) then v473.TextStrokeColor3=Color3.new(0,0 + 0 ,0);v472=2 + 2 ;break;end end end if (v472==(0 + 0)) then local v502=0 + 0 ;while true do if (v502==1) then v452.Size=UDim2.new(0 -0 ,99 + 101 ,0,19 + 21 );v472=1434 -(797 + 636) ;break;end if (v502==(0 -0)) then v452=Instance.new("BillboardGui",v352.Character);v452.Name="Murder_Info";v502=1 -0 ;end end end if (v472==(440 -(397 + 42))) then v452.StudsOffset=Vector3.new(1619 -(1427 + 192) ,3.5,0 + 0 );v452.AlwaysOnTop=true;v452.Adornee=v448;v472=4 -2 ;end end end local v453=v452:FindFirstChild("Info");if v453 then local v474=0 + 0 ;local v475;while true do if (v474==(785 -(222 + 563))) then v475=math.floor((v353.Position-v447.Position).Magnitude);v453.Text=v352.Name   .. " ["   .. v475   .. "m]" ;break;end end end local v454=(v353.Position-v447.Position).Magnitude;if ((v454<=(5.5 + 5)) and v448) then local v476=326 -(192 + 134) ;local v477;while true do if (v476==(1276 -(316 + 960))) then getgenv().AimlockTarget=v448;v477=v4.Character:FindFirstChild("Gun") or v4.Backpack:FindFirstChild("Gun") ;v476=1;end if ((1 + 0)==v476) then if (v477 and v477:FindFirstChild("Remote")) then v477.Remote:FireServer(v448.Position,v448);end break;end end end end break;end if (v351==(1 + 0)) then for v437,v438 in ipairs(v3:GetPlayers()) do if (v438~=v4) then local v458=(v438:FindFirstChild("Backpack") and v438.Backpack:FindFirstChild("Knife")) or (v438.Character and v438.Character:FindFirstChild("Knife")) ;if v458 then v352=v438;break;end end end v353=v4.Character and v4.Character:FindFirstChild("HumanoidRootPart") ;v351=2 + 0 ;end if (v351==(0 -0)) then task.wait(0.15);v352=nil;v351=552 -(83 + 468) ;end end end end);end end);createInput(v9['Sheriff'],"Accuracy",1831 -(1202 + 604) );createToggle(v9['Settings'],"Unload UI",false,function(v232) if v232 then v10:Destroy();end end);createToggle(v9['Settings'],"FPS Booster (Normal)",false,function(v233) if v233 then local v262=0 -0 ;local v263;while true do if (v262==0) then v263=0 -0 ;while true do if (v263==(7 -5)) then for v455,v456 in ipairs(workspace:GetDescendants()) do local v457=0 + 0 ;while true do if ((0 -0)==v457) then if v456:IsA("Decal") then v456.Transparency=326 -(45 + 280) ;end if (v456:IsA("ParticleEmitter") or v456:IsA("Trail")) then v456.Enabled=false;end break;end end end break;end if (v263==(1 + 0)) then game:GetService("Lighting").FogEnd=100000;game:GetService("Lighting").Brightness=572 -(47 + 524) ;v263=2 + 0 ;end if (v263==(0 + 0)) then settings().Rendering.QualityLevel=Enum.QualityLevel.Level01;game:GetService("Lighting").GlobalShadows=false;v263=1 + 0 ;end end break;end end else settings().Rendering.QualityLevel=Enum.QualityLevel.Automatic;end end);createToggle(v9['Settings'],"FPS Booster (Ultra)",false,function(v234) if v234 then local v266=0 + 0 ;while true do if (v266==(1 + 2)) then if game:GetService("Terrain") then local v419=game:GetService("Workspace").Terrain;v419.WaterReflectance=0;v419.WaterTransparency=1 -0 ;v419.WaterWaveSize=0 + 0 ;v419.WaterWaveSpeed=0 -0 ;v419.WaterColor=Color3.new();end break;end if (v266==0) then settings().Rendering.QualityLevel=Enum.QualityLevel.Level01;game:GetService("Lighting").GlobalShadows=false;v266=1 + 0 ;end if (v266==(1912 -(340 + 1571))) then game:GetService("Lighting").FogEnd=394423403 + 605576596 ;game:GetService("Lighting").Brightness=1773 -(1733 + 39) ;v266=328 -(89 + 237) ;end if (v266==(5 -3)) then game:GetService("Lighting").ClockTime=1048 -(125 + 909) ;for v412,v413 in ipairs(workspace:GetDescendants()) do local v414=0;while true do if (v414==(1949 -(1096 + 852))) then if (v413:IsA("ParticleEmitter") or v413:IsA("Trail")) then v413.Enabled=false;end if v413:IsA("SurfaceGui") then v413.Enabled=false;end break;end if (v414==(881 -(581 + 300))) then if v413:IsA("BasePart") then local v480=1220 -(855 + 365) ;local v481;while true do if ((0 + 0)==v480) then v481=0;while true do if ((0 -0)==v481) then v413.Material=Enum.Material.SmoothPlastic;v413.Reflectance=0;break;end end break;end end end if v413:IsA("Decal") then v413.Transparency=1 + 0 ;end v414=1 -0 ;end end end v266=3 + 0 ;end end else settings().Rendering.QualityLevel=Enum.QualityLevel.Automatic;end end);createToggle(v9['Settings'],"Xray",false,function(v235) local v236=512 -(409 + 103) ;local v237;local v238;while true do if (v236==(237 -(46 + 190))) then function v237(v354) for v388,v389 in pairs(v354:GetChildren()) do local v390=95 -(51 + 44) ;while true do if (v390==(286 -(156 + 130))) then if (v389:IsA("BasePart") and  not v389.Parent:FindFirstChild("Humanoid")) then v389.LocalTransparencyModifier=0.75 + 0 ;end v237(v389);break;end end end end v238=nil;v236=1319 -(1114 + 203) ;end if (v236==(2 -0)) then function v238(v355) for v391,v392 in pairs(v355:GetChildren()) do local v393=0;while true do if ((726 -(228 + 498))==v393) then if (v392:IsA("BasePart") and  not v392.Parent:FindFirstChild("Humanoid")) then v392.LocalTransparencyModifier=0 + 0 ;end v238(v392);break;end end end end if v235 then v237(workspace);else v238(workspace);end break;end if ((0 + 0)==v236) then getgenv().Xray=v235;v237=nil;v236=1 + 0 ;end end end);local v129=v9['Statut'];local v130={};local function v131(v239) local v240=663 -(174 + 489) ;local v241;while true do if (v240==(69 -(10 + 59))) then local v328=0 + 0 ;while true do if ((0 -0)==v328) then v241=Instance.new("TextLabel",v129);v241.Size=UDim2.new(1906 -(830 + 1075) , -(534 -(303 + 221)),1269 -(231 + 1038) ,16 + 4 );v328=1 + 0 ;end if (v328==(1163 -(171 + 991))) then v240=4 -3 ;break;end end end if (v240==(10 -6)) then v130[v239]=v241;break;end if (v240==(1947 -(1036 + 909))) then v241.Font=Enum.Font.Gotham;v241.TextSize=34 -20 ;v240=3 + 0 ;end if (v240==(3 -2)) then v241.BackgroundTransparency=1 + 0 ;v241.TextColor3=Color3.new(2 -1 ,1 -0 ,2 -1 );v240=2 + 0 ;end if (v240==(9 -6)) then v241.TextXAlignment=Enum.TextXAlignment.Left;v241.Text=v239   .. ": Loading..." ;v240=1252 -(111 + 1137) ;end end end local v132={"FPS","Ping","GunOnGround","Murder","Sheriff","Options","ScriptRuntime","CurrentTime"};for v242,v243 in ipairs(v132) do v131(v243);end local v133=1029 -(522 + 447) ;v7.RenderStepped:Connect(function(v244) v133=math.floor((2 -1)/v244 );end);local v134=tick();task.spawn(function() while true do local v251=0 + 0 ;local v252;local v253;local v254;local v255;local v256;local v257;while true do if (v251==(774 -(326 + 445))) then v130['Murder'].Text="Murder: "   .. v252 ;v130['Sheriff'].Text="Sheriff: "   .. v253 ;v130['Options'].Text="Options ON: "   .. table.concat(v255,", ") ;v130['ScriptRuntime'].Text="Script Runtime: "   .. string.format("%.1f sec",tick() -v134 ) ;v251=17 -13 ;end if ((2 -1)==v251) then for v394,v395 in pairs(v78) do if v395() then table.insert(v255,v394);end end for v396,v397 in ipairs(v3:GetPlayers()) do if v397.Character then local v425=0 -0 ;local v426;local v427;local v428;while true do if (v425==(712 -(530 + 181))) then v428=nil;while true do if (v426==(1911 -(716 + 1194))) then if v427 then v252=v397.Name;end if v428 then v253=v397.Name;end break;end if (v426==(881 -(614 + 267))) then v427=v397.Character:FindFirstChild("Knife");v428=v397.Character:FindFirstChild("Gun");v426=33 -(19 + 13) ;end end break;end if (v425==(503 -(74 + 429))) then v426=0 -0 ;v427=nil;v425=2 -1 ;end end end end v256=workspace:FindFirstChild("GunDrop");if (v256 and v256:IsA("Tool")) then v254="Yes";end v251=1 + 1 ;end if (v251==(4 -2)) then v257=math.floor(Stats().Network.ServerStatsItem["Data Ping"]:GetValue());v130['FPS'].Text="FPS: "   .. tostring(v133) ;v130['Ping'].Text="Ping: "   .. tostring(v257)   .. " ms" ;v130['GunOnGround'].Text="Gun on ground: "   .. v254 ;v251=8 -5 ;end if ((0 + 0)==v251) then local v363=0 -0 ;while true do if (v363==1) then v254="No";v255={};v363=3 -1 ;end if (v363==(1812 -(1293 + 519))) then v252="Unknown";v253="Unknown";v363=1 -0 ;end if (v363==(4 -2)) then v251=18 -(12 + 5) ;break;end end end if (v251==(7 -3)) then v130['CurrentTime'].Text="Time: "   .. os.date("%H:%M:%S") ;task.wait(4 -3 );break;end end end end);local v135=workspace.CurrentCamera;v7.RenderStepped:Connect(function() if (getgenv().AimlockTarget and getgenv().AimlockTarget:IsDescendantOf(workspace)) then v135.CFrame=CFrame.new(v135.CFrame.Position,getgenv().AimlockTarget.Position);end end);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--
