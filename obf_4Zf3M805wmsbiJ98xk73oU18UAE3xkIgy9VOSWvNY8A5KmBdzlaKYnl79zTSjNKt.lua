--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v71, v72)
	local v73 = {};
	for v148 = 1, #v71 do
		v6(v73, v0(v4(v1(v2(v71, v148, v148 + 1)), v1(v2(v72, 1 + (v148 % #v72), 1 + (v148 % #v72) + 1))) % 256));
	end
	return v5(v73);
end
local v8 = game:GetService(v7("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local v9 = v8.LocalPlayer;
local v10 = game:GetService(v7("\23\218\47\192\242\16\200\56\211\245\32\200", "\156\67\173\74\165"));
local v11 = game:GetService(v7("\1\164\76\4\149\40\86\33\163\122\19\174\48\79\55\178", "\38\84\215\41\118\220\70"));
local v12 = Instance.new(v7("\99\21\48\23\251\94\49\55\27", "\158\48\118\66\114"), v9:WaitForChild(v7("\155\40\17\47\118\183\220\190\45", "\155\203\68\112\86\19\197")));
v12.Name = v7("\124\252\27\221\115\77\218\208\115\255", "\152\38\189\86\156\32\24\133");
v12.ResetOnSpawn = false;
v12.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
local v17 = Instance.new(v7("\218\69\166\75\249", "\38\156\55\199"));
v17.Size = UDim2.new(0 - 0, 520, 0, 340);
v17.Position = UDim2.new(939.5 - (714 + 225), -(759 - 499), 0.5 - 0, -(19 + 151));
v17.BackgroundColor3 = Color3.fromRGB(21 - 6, 821 - (118 + 688), 63 - (25 + 23));
v17.BorderSizePixel = 0 + 0;
v17.Parent = v12;
v17.Active = true;
v17.Draggable = true;
Instance.new(v7("\157\84\95\39\1\122\255\81", "\35\200\29\28\72\115\20\154"), v17).CornerRadius = UDim.new(1886 - (927 + 959), 12);
local v26 = Instance.new(v7("\44\150\226\203\159\35\63\28", "\84\121\223\177\191\237\76"), v17);
v26.Thickness = 2;
v26.Color = Color3.fromRGB(573 - 403, 732 - (16 + 716), 255);
v26.Transparency = 0.15 - 0;
local v30 = Instance.new(v7("\143\83\209\180\22\81\50\196\183", "\161\219\54\169\192\90\48\80"), v17);
v30.Size = UDim2.new(1, 0, 97 - (11 + 86), 121 - 71);
v30.Position = UDim2.new(285 - (175 + 110), 0, 0, 0 - 0);
v30.BackgroundTransparency = 4 - 3;
v30.Text = v7("\115\99\45\4\122\119\64\13\124\96", "\69\41\34\96");
v30.TextColor3 = Color3.fromRGB(2051 - (503 + 1293), 600 - 385, 0 + 0);
v30.Font = Enum.Font.GothamBlack;
v30.TextSize = 28;
v30.TextStrokeTransparency = 1061.4 - (810 + 251);
v30.TextStrokeColor3 = Color3.new(0, 0 + 0, 0 + 0);
local v41 = Instance.new(v7("\154\209\214\7\7", "\75\220\163\183\106\98"), v17);
v41.Size = UDim2.new(0, 130, 1, -(46 + 4));
v41.Position = UDim2.new(0, 533 - (43 + 490), 0, 50);
v41.BackgroundColor3 = Color3.fromRGB(758 - (711 + 22), 25, 96 - 71);
Instance.new(v7("\55\147\168\56\203\12\191\153", "\185\98\218\235\87"), v41).CornerRadius = UDim.new(859 - (240 + 619), 2 + 6);
local v46 = Instance.new(v7("\237\46\38\235\219", "\202\171\92\71\134\190"), v17);
v46.Size = UDim2.new(1 - 0, -(10 + 130), 1745 - (1344 + 400), -(465 - (255 + 150)));
v46.Position = UDim2.new(0, 111 + 29, 0 + 0, 60);
v46.BackgroundTransparency = 1;
v46.Name = v7("\25\192\43\141\10\206\34\156\40\200\34\141\59", "\232\73\161\76");
local v51 = {v7("\157\216\80\80", "\126\219\185\34\61"),v7("\43\207\83\119", "\135\108\174\62\18\30\23\147"),v7("\147\241\62\217\25\189", "\167\214\137\74\171\120\206\83"),v7("\184\245\38\73\241\169\140\227", "\199\235\144\82\61\152")};
local v52 = {};
local function v53(v74)
	local v75 = 1739 - (404 + 1335);
	local v76;
	local v77;
	local v78;
	while true do
		local v149 = 406 - (183 + 223);
		while true do
			if ((1 - 0) == v149) then
				if (v75 == (1 + 0)) then
					local FlatIdent_76979 = 0;
					while true do
						if (FlatIdent_76979 == 2) then
							v75 = 340 - (118 + 220);
							break;
						end
						if (FlatIdent_76979 == 1) then
							v77.Padding = UDim.new(337 - (10 + 327), 6 + 2);
							v77.SortOrder = Enum.SortOrder.LayoutOrder;
							FlatIdent_76979 = 2;
						end
						if (FlatIdent_76979 == 0) then
							v76.BackgroundTransparency = 1 + 0;
							v77 = Instance.new(v7("\242\125\92\29\170\10\235\85\105\27\172\10", "\126\167\52\16\116\217"), v76);
							FlatIdent_76979 = 1;
						end
					end
				end
				if (v75 == (0 + 0)) then
					local FlatIdent_67C40 = 0;
					while true do
						if (1 == FlatIdent_67C40) then
							v76.Size = UDim2.new(450 - (108 + 341), 0 + 0, 4 - 3, 1493 - (711 + 782));
							v76.Visible = false;
							FlatIdent_67C40 = 2;
						end
						if (FlatIdent_67C40 == 0) then
							v76 = Instance.new(v7("\33\4\184\38\2", "\75\103\118\217"), v46);
							v76.Name = v74;
							FlatIdent_67C40 = 1;
						end
						if (FlatIdent_67C40 == 2) then
							v75 = 1;
							break;
						end
					end
				end
				break;
			end
			if (0 == v149) then
				if (v75 == (5 - 2)) then
					local FlatIdent_63487 = 0;
					while true do
						if (FlatIdent_63487 == 0) then
							v52[v74] = v76;
							return v76;
						end
					end
				end
				if (v75 == (471 - (270 + 199))) then
					local FlatIdent_44839 = 0;
					while true do
						if (FlatIdent_44839 == 2) then
							v75 = 1 + 2;
							break;
						end
						if (FlatIdent_44839 == 1) then
							v78.PaddingLeft = UDim.new(0 - 0, 10 + 0);
							v78.PaddingRight = UDim.new(0, 10);
							FlatIdent_44839 = 2;
						end
						if (FlatIdent_44839 == 0) then
							v78 = Instance.new(v7("\253\7\16\129\176\29\245\198\41", "\156\168\78\64\224\212\121"), v76);
							v78.PaddingTop = UDim.new(0 + 0, 1829 - (580 + 1239));
							FlatIdent_44839 = 1;
						end
					end
				end
				v149 = 1 + 0;
			end
		end
	end
end
local function v54(v79)
	local FlatIdent_5ED46 = 0;
	local v80;
	local v81;
	while true do
		if (FlatIdent_5ED46 == 1) then
			while true do
				if (v80 == 0) then
					v81 = 0 + 0;
					while true do
						if (v81 == (1167 - (645 + 522))) then
							for v280, v281 in pairs(v52) do
								v281.Visible = false;
							end
							if v52[v79] then
								v52[v79].Visible = true;
							end
							break;
						end
					end
					break;
				end
			end
			break;
		end
		if (FlatIdent_5ED46 == 0) then
			v80 = 0 - 0;
			v81 = nil;
			FlatIdent_5ED46 = 1;
		end
	end
end
for v82, v83 in ipairs(v51) do
	local v84 = 0;
	local v85;
	local v86;
	local v87;
	while true do
		if (v84 == (1790 - (1010 + 780))) then
			local FlatIdent_104D4 = 0;
			while true do
				if (FlatIdent_104D4 == 1) then
					v85.Position = UDim2.new(0 - 0, 1841 - (1045 + 791), 0 - 0, ((v82 - (1 - 0)) * 40) + (515 - (351 + 154)));
					v84 = 1;
					break;
				end
				if (FlatIdent_104D4 == 0) then
					v85 = Instance.new(v7("\51\235\189\218\37\251\177\218\8\224", "\174\103\142\197"), v41);
					v85.Size = UDim2.new(1 + 0, -10, 0 - 0, 36);
					FlatIdent_104D4 = 1;
				end
			end
		end
		if (v84 == (1579 - (1281 + 293))) then
			if (v82 == 1) then
				v87.Visible = true;
			end
			v85.MouseButton1Click:Connect(function()
				v54(v83);
			end);
			break;
		end
		if (v84 == (270 - (28 + 238))) then
			local FlatIdent_946F = 0;
			while true do
				if (FlatIdent_946F == 0) then
					v86.Thickness = 1;
					Instance.new(v7("\225\237\205\83\198\202\235\78", "\60\180\164\142"), v85).CornerRadius = UDim.new(0 - 0, 1565 - (1381 + 178));
					FlatIdent_946F = 1;
				end
				if (FlatIdent_946F == 1) then
					v87 = v53(v83);
					v84 = 5 + 0;
					break;
				end
			end
		end
		if ((2 + 0) == v84) then
			local FlatIdent_49AED = 0;
			while true do
				if (FlatIdent_49AED == 1) then
					v85.AutoButtonColor = false;
					v84 = 3 + 0;
					break;
				end
				if (FlatIdent_49AED == 0) then
					v85.TextColor3 = Color3.new(1 + 0, 3 - 2, 1 + 0);
					v85.BackgroundColor3 = Color3.fromRGB(35, 505 - (381 + 89), 32 + 3);
					FlatIdent_49AED = 1;
				end
			end
		end
		if (v84 == (1 - 0)) then
			local FlatIdent_65290 = 0;
			while true do
				if (FlatIdent_65290 == 1) then
					v85.TextSize = 1172 - (1074 + 82);
					v84 = 3 - 1;
					break;
				end
				if (FlatIdent_65290 == 0) then
					v85.Text = v83;
					v85.Font = Enum.Font.GothamBold;
					FlatIdent_65290 = 1;
				end
			end
		end
		if (v84 == 3) then
			local FlatIdent_2D2B8 = 0;
			local v179;
			while true do
				if (FlatIdent_2D2B8 == 0) then
					v179 = 1784 - (214 + 1570);
					while true do
						if (v179 == (1456 - (990 + 465))) then
							v86.Color = Color3.fromRGB(71 + 99, 0, 111 + 144);
							v84 = 4 + 0;
							break;
						end
						if (v179 == 0) then
							local FlatIdent_5BA5E = 0;
							while true do
								if (FlatIdent_5BA5E == 1) then
									v179 = 1;
									break;
								end
								if (FlatIdent_5BA5E == 0) then
									v85.BorderSizePixel = 0 - 0;
									v86 = Instance.new(v7("\99\1\108\44\55\81\243\83", "\152\54\72\63\88\69\62"), v85);
									FlatIdent_5BA5E = 1;
								end
							end
						end
					end
					break;
				end
			end
		end
	end
end
local v55 = Instance.new(v7("\113\83\4\46\34\207\7\76\74\10\39", "\114\56\62\101\73\71\141"), v12);
v55.Size = UDim2.new(1726 - (1668 + 58), 676 - (512 + 114), 0 - 0, 103 - 53);
v55.Position = UDim2.new(0, 69 - 49, 0 + 0, 20);
v55.BackgroundTransparency = 1;
v55.Image = v7("\170\235\195\197\171\250\222\208\177\237\129\139\247\184\136\156\232\191\131\156\235\188\143\144\234\190\142\151", "\164\216\137\187");
v55.ZIndex = 2 + 8;
v55.Draggable = true;
local v62 = Instance.new(v7("\225\233\36\188\162", "\107\178\134\81\210\198\158"), v55);
v62.SoundId = v7("\42\12\154\199\185\43\11\150\207\174\98\65\205\159\251\105\86\218\148\249\105\94\214", "\202\88\110\226\166");
v62.Volume = 1 + 0;
v55.MouseButton1Click:Connect(function()
	local FlatIdent_295EB = 0;
	local v88;
	while true do
		if (FlatIdent_295EB == 0) then
			v88 = 0 - 0;
			while true do
				if (v88 == (1994 - (109 + 1885))) then
					v17.Visible = not v17.Visible;
					v62:Play();
					break;
				end
			end
			break;
		end
	end
end);
local function v65(v89)
	local FlatIdent_981A3 = 0;
	local v90;
	local v91;
	local v92;
	local v93;
	local v94;
	while true do
		if (FlatIdent_981A3 == 0) then
			v90, v91, v92, v93 = nil;
			v94 = nil;
			FlatIdent_981A3 = 1;
		end
		if (FlatIdent_981A3 == 2) then
			v89.InputChanged:Connect(function(v154)
				if (v154.UserInputType == Enum.UserInputType.MouseMovement) then
					v91 = v154;
				end
			end);
			v11.InputChanged:Connect(function(v155)
				if ((v155 == v91) and v90) then
					v94(v155);
				end
			end);
			break;
		end
		if (FlatIdent_981A3 == 1) then
			function v94(v150)
				local FlatIdent_9622C = 0;
				local v151;
				while true do
					if (FlatIdent_9622C == 0) then
						v151 = v150.Position - v93;
						v89.Position = UDim2.new(v92.X.Scale, v92.X.Offset + v151.X, v92.Y.Scale, v92.Y.Offset + v151.Y);
						break;
					end
				end
			end
			v89.InputBegan:Connect(function(v153)
				if (v153.UserInputType == Enum.UserInputType.MouseButton1) then
					local FlatIdent_2D88C = 0;
					local v181;
					while true do
						if (FlatIdent_2D88C == 0) then
							v181 = 0;
							while true do
								if (v181 == (1470 - (1269 + 200))) then
									v92 = v89.Position;
									v153.Changed:Connect(function()
										if (v153.UserInputState == Enum.UserInputState.End) then
											v90 = false;
										end
									end);
									break;
								end
								if (v181 == (0 - 0)) then
									local FlatIdent_207CC = 0;
									while true do
										if (FlatIdent_207CC == 1) then
											v181 = 816 - (98 + 717);
											break;
										end
										if (FlatIdent_207CC == 0) then
											v90 = true;
											v93 = v153.Position;
											FlatIdent_207CC = 1;
										end
									end
								end
							end
							break;
						end
					end
				end
			end);
			FlatIdent_981A3 = 2;
		end
	end
end
v65(v17);
v65(v55);
local v66 = {};
local v67 = {};
local v68 = nil;
local v69 = nil;
local v70 = nil;
function createToggle(v95, v96, v97, v98)
	local v99 = 0;
	local v100;
	local v101;
	local v102;
	local v103;
	local v104;
	while true do
		if (v99 == (826 - (802 + 24))) then
			local FlatIdent_61EE = 0;
			while true do
				if (1 == FlatIdent_61EE) then
					v100.BackgroundTransparency = 1 + 0;
					v101 = Instance.new(v7("\37\53\170\44\98\54\43\20\60", "\73\113\80\210\88\46\87"), v100);
					FlatIdent_61EE = 2;
				end
				if (0 == FlatIdent_61EE) then
					v100 = Instance.new(v7("\229\29\131\250\207", "\170\163\111\226\151"), v95);
					v100.Size = UDim2.new(1 - 0, -(12 - 2), 0, 6 + 30);
					FlatIdent_61EE = 1;
				end
				if (FlatIdent_61EE == 2) then
					v99 = 1 + 0;
					break;
				end
			end
		end
		if (v99 == 3) then
			v102.Size = UDim2.new(0.25 + 0, 0 - 0, 0.8 - 0, 0);
			v102.Position = UDim2.new(0.75 + 0, 0 + 0, 0.1 + 0, 0);
			v102.BackgroundColor3 = Color3.fromRGB(30 + 10, 40, 19 + 21);
			v102.Font = Enum.Font.Gotham;
			v99 = 1437 - (797 + 636);
		end
		if (v99 == (9 - 7)) then
			v101.Font = Enum.Font.GothamBold;
			v101.TextSize = 1635 - (1427 + 192);
			v101.TextXAlignment = Enum.TextXAlignment.Left;
			v102 = Instance.new(v7("\181\41\213\6\197\148\56\217\29\233", "\135\225\76\173\114"), v100);
			v99 = 2 + 1;
		end
		if (v99 == (8 - 4)) then
			v102.TextSize = 20;
			Instance.new(v7("\47\196\155\191\190\179\162\8", "\199\122\141\216\208\204\221"), v102).CornerRadius = UDim.new(0 + 0, 3 + 3);
			v103 = v97 or false;
			v104 = nil;
			v99 = 331 - (192 + 134);
		end
		if (v99 == (1281 - (316 + 960))) then
			function v104()
				local v237 = 0;
				while true do
					if (0 == v237) then
						v102.Text = (v103 and "✅") or "❌";
						v102.TextColor3 = (v103 and Color3.fromRGB(80, 142 + 113, 62 + 18)) or Color3.fromRGB(255, 74 + 6, 305 - 225);
						break;
					end
				end
			end
			v102.MouseButton1Click:Connect(function()
				local FlatIdent_7F121 = 0;
				local v238;
				local v239;
				while true do
					if (FlatIdent_7F121 == 0) then
						v238 = 551 - (83 + 468);
						v239 = nil;
						FlatIdent_7F121 = 1;
					end
					if (FlatIdent_7F121 == 1) then
						while true do
							if (v238 == (1806 - (1202 + 604))) then
								v239 = 0 - 0;
								while true do
									if (v239 == 1) then
										if v98 then
											v98(v103);
										end
										break;
									end
									if (v239 == (0 - 0)) then
										local FlatIdent_47ABB = 0;
										while true do
											if (FlatIdent_47ABB == 1) then
												v239 = 1;
												break;
											end
											if (FlatIdent_47ABB == 0) then
												v103 = not v103;
												v104();
												FlatIdent_47ABB = 1;
											end
										end
									end
								end
								break;
							end
						end
						break;
					end
				end
			end);
			v104();
			v66[v96] = function()
				return v103;
			end;
			break;
		end
		if (v99 == (2 - 1)) then
			local FlatIdent_45D37 = 0;
			while true do
				if (FlatIdent_45D37 == 0) then
					v101.Size = UDim2.new(0.7, 325 - (45 + 280), 1 + 0, 0 + 0);
					v101.Text = v96;
					FlatIdent_45D37 = 1;
				end
				if (FlatIdent_45D37 == 1) then
					v101.TextColor3 = Color3.new(1 + 0, 1 + 0, 1 + 0);
					v101.BackgroundTransparency = 1;
					FlatIdent_45D37 = 2;
				end
				if (FlatIdent_45D37 == 2) then
					v99 = 3 - 1;
					break;
				end
			end
		end
	end
end
function createInput(v105, v106, v107)
	local v108 = 0;
	local v109;
	local v110;
	local v111;
	local v112;
	while true do
		if (v108 == (1917 - (340 + 1571))) then
			local FlatIdent_5EE26 = 0;
			while true do
				if (FlatIdent_5EE26 == 1) then
					v112.TextColor3 = Color3.new(1035 - (125 + 909), 1, 1);
					v112.Font = Enum.Font.GothamBold;
					FlatIdent_5EE26 = 2;
				end
				if (FlatIdent_5EE26 == 2) then
					v108 = 7;
					break;
				end
				if (FlatIdent_5EE26 == 0) then
					v112.Text = "➡";
					v112.BackgroundColor3 = Color3.fromRGB(32 + 48, 1852 - (1733 + 39), 274 - 174);
					FlatIdent_5EE26 = 1;
				end
			end
		end
		if (v108 == 5) then
			local FlatIdent_67691 = 0;
			while true do
				if (FlatIdent_67691 == 1) then
					v112.Size = UDim2.new(0.2, 1948 - (1096 + 852), 0.8 + 0, 0);
					v112.Position = UDim2.new(0.78 - 0, 0 + 0, 512.1 - (409 + 103), 236 - (46 + 190));
					FlatIdent_67691 = 2;
				end
				if (FlatIdent_67691 == 2) then
					v108 = 6;
					break;
				end
				if (FlatIdent_67691 == 0) then
					Instance.new(v7("\185\44\124\73\246\79\229\158", "\128\236\101\63\38\132\33"), v111);
					v112 = Instance.new(v7("\152\172\9\80\148\254\219\184\166\31", "\175\204\201\113\36\214\139"), v109);
					FlatIdent_67691 = 1;
				end
			end
		end
		if (v108 == (102 - (51 + 44))) then
			v112.TextSize = 14;
			Instance.new(v7("\114\229\22\211\22\73\201\39", "\100\39\172\85\188"), v112);
			v67[v106] = tonumber(v107);
			v112.MouseButton1Click:Connect(function()
				local v240 = 0 + 0;
				local v241;
				while true do
					if (v240 == (1317 - (1114 + 203))) then
						local FlatIdent_8ABD6 = 0;
						while true do
							if (FlatIdent_8ABD6 == 0) then
								v241 = tonumber(v111.Text);
								if v241 then
									local v291 = 726 - (228 + 498);
									local v292;
									while true do
										if (v291 == 0) then
											v292 = 0;
											while true do
												if (v292 == (0 + 0)) then
													v67[v106] = v241;
													v112.Text = "✅";
													break;
												end
											end
											break;
										end
									end
								else
									v112.Text = "❌";
								end
								FlatIdent_8ABD6 = 1;
							end
							if (FlatIdent_8ABD6 == 1) then
								v240 = 1 + 0;
								break;
							end
						end
					end
					if (v240 == 1) then
						wait(1);
						v112.Text = "➡";
						break;
					end
				end
			end);
			break;
		end
		if (v108 == (663 - (174 + 489))) then
			v109 = Instance.new(v7("\139\207\17\253\125", "\150\205\189\112\144\24"), v105);
			v109.Size = UDim2.new(2 - 1, -(1915 - (830 + 1075)), 524 - (303 + 221), 36);
			v109.BackgroundTransparency = 1270 - (231 + 1038);
			v110 = Instance.new(v7("\17\129\167\88\40\137\19\21\41", "\112\69\228\223\44\100\232\113"), v109);
			v108 = 1 + 0;
		end
		if (v108 == (1164 - (171 + 991))) then
			local FlatIdent_634AF = 0;
			while true do
				if (FlatIdent_634AF == 2) then
					v108 = 3;
					break;
				end
				if (FlatIdent_634AF == 1) then
					v110.TextXAlignment = Enum.TextXAlignment.Left;
					v111 = Instance.new(v7("\224\26\31\199\148\115\158", "\230\180\127\103\179\214\28"), v109);
					FlatIdent_634AF = 2;
				end
				if (0 == FlatIdent_634AF) then
					v110.Font = Enum.Font.Gotham;
					v110.TextSize = 57 - 43;
					FlatIdent_634AF = 1;
				end
			end
		end
		if (v108 == 3) then
			local FlatIdent_42BD8 = 0;
			while true do
				if (FlatIdent_42BD8 == 1) then
					v111.BackgroundColor3 = Color3.fromRGB(50, 80 - 30, 154 - 104);
					v111.PlaceholderText = tostring(v107);
					FlatIdent_42BD8 = 2;
				end
				if (FlatIdent_42BD8 == 0) then
					v111.Size = UDim2.new(0.2, 0, 0.8 - 0, 0 - 0);
					v111.Position = UDim2.new(0.55 + 0, 0 - 0, 0.1, 0 - 0);
					FlatIdent_42BD8 = 1;
				end
				if (FlatIdent_42BD8 == 2) then
					v108 = 4;
					break;
				end
			end
		end
		if ((1249 - (111 + 1137)) == v108) then
			v110.Size = UDim2.new(0.5, 0, 159 - (91 + 67), 0 - 0);
			v110.Text = v106;
			v110.TextColor3 = Color3.new(1, 1, 1 + 0);
			v110.BackgroundTransparency = 524 - (423 + 100);
			v108 = 1 + 1;
		end
		if (v108 == (10 - 6)) then
			local FlatIdent_31ECC = 0;
			while true do
				if (FlatIdent_31ECC == 0) then
					v111.Text = "";
					v111.TextColor3 = Color3.new(1 + 0, 772 - (326 + 445), 4 - 3);
					FlatIdent_31ECC = 1;
				end
				if (FlatIdent_31ECC == 1) then
					v111.Font = Enum.Font.Gotham;
					v111.TextSize = 31 - 17;
					FlatIdent_31ECC = 2;
				end
				if (FlatIdent_31ECC == 2) then
					v108 = 11 - 6;
					break;
				end
			end
		end
	end
end
function markTarget(v113)
	if (v113 and not v113:FindFirstChild(v7("\140\113\180\130\60\185\85\184\146\56", "\83\205\24\217\224"))) then
		local FlatIdent_5724B = 0;
		local v158;
		while true do
			if (0 == FlatIdent_5724B) then
				v158 = Instance.new(v7("\213\192\193\56\229\209\196\50\232\231\194\37", "\93\134\165\173"), v113);
				v158.Name = v7("\159\251\204\192\53\218\159\127\172\249", "\30\222\146\161\162\90\174\210");
				FlatIdent_5724B = 1;
			end
			if (FlatIdent_5724B == 1) then
				v158.Adornee = v113;
				v158.Color3 = Color3.fromRGB(966 - (530 + 181), 931 - (614 + 267), 82 - (19 + 13));
				FlatIdent_5724B = 2;
			end
			if (FlatIdent_5724B == 2) then
				v158.LineThickness = 0.1;
				break;
			end
		end
	end
end
function createESP(v114, v115)
	local FlatIdent_5962D = 0;
	local v116;
	local v125;
	local v130;
	while true do
		if (FlatIdent_5962D == 4) then
			v125.AlwaysOnTop = true;
			v130 = Instance.new(v7("\239\142\9\225\149\221\205\222\135", "\175\187\235\113\149\217\188"), v125);
			v130.Size = UDim2.new(2 - 1, 0 + 0, 1 + 0, 0 + 0);
			FlatIdent_5962D = 5;
		end
		if (FlatIdent_5962D == 3) then
			v125.Name = v7("\124\101\123\194\81\143\148\31\88\88\72\248", "\107\57\54\43\157\21\230\231");
			v125.Size = UDim2.new(0 - 0, 235 - 135, 0, 11 + 9);
			v125.StudsOffset = Vector3.new(0 + 0, 4, 0);
			FlatIdent_5962D = 4;
		end
		if (FlatIdent_5962D == 1) then
			v116.AlwaysOnTop = true;
			v116.ZIndex = 16 - 6;
			v116.Size = Vector3.new(4 - 2, 5, 2 - 1);
			FlatIdent_5962D = 2;
		end
		if (FlatIdent_5962D == 2) then
			v116.Color3 = (v115 and Color3.fromRGB(67 + 188, 0 - 0, 0 - 0)) or Color3.fromRGB(1812 - (1293 + 519), 346 - 176, 665 - 410);
			v116.Transparency = 0.5 - 0;
			v125 = Instance.new(v7("\120\193\233\90\88\253\129\72\204\194\67\83", "\224\58\168\133\54\58\146"), v114.Character);
			FlatIdent_5962D = 3;
		end
		if (FlatIdent_5962D == 0) then
			v116 = Instance.new(v7("\199\65\104\34\228\64\116\6\224\111\116\5\247\64\125\15\235\90", "\106\133\46\16"), v114.Character);
			v116.Name = v7("\125\19\67", "\32\56\64\19\156\58");
			v116.Adornee = v114.Character;
			FlatIdent_5962D = 1;
		end
		if (FlatIdent_5962D == 6) then
			v130.TextSize = 1872 - (673 + 1185);
			v130.Text = v7("\114\225\207", "\24\92\207\225\44\131\25");
			v130.Name = v7("\110\224\136\120\30\101\95", "\29\43\179\216\44\123");
			break;
		end
		if (FlatIdent_5962D == 5) then
			v130.BackgroundTransparency = 1097 - (709 + 387);
			v130.TextColor3 = v116.Color3;
			v130.Font = Enum.Font.GothamBold;
			FlatIdent_5962D = 6;
		end
	end
end
function updateESP(v139, v140)
	local FlatIdent_21CA5 = 0;
	local v141;
	while true do
		if (FlatIdent_21CA5 == 0) then
			v141 = v139.Character and v139.Character:FindFirstChild(v7("\152\234\16\115\153\208\51\88\188\215\35\73", "\44\221\185\64"));
			if (v141 and v141:FindFirstChild(v7("\36\212\120\107\118\25\243", "\19\97\135\40\63")) and v139.Character:FindFirstChild(v7("\134\89\50\63", "\81\206\60\83\91\79")) and v9.Character:FindFirstChild(v7("\102\174\209\118", "\196\46\203\176\18\79\163\45"))) then
				local FlatIdent_7517F = 0;
				local v163;
				local v164;
				while true do
					if (FlatIdent_7517F == 1) then
						while true do
							if (v163 == (0 - 0)) then
								v164 = math.floor((v139.Character.Head.Position - v9.Character.Head.Position).Magnitude);
								v141.ESPText.Text = ((v140 and v7("\157\44\123\19\61\187\162\248", "\143\216\66\30\126\68\155")) or v7("\135\201\25\206\133\238\151", "\129\202\168\109\171\165\195\183")) .. v164 .. "m";
								break;
							end
						end
						break;
					end
					if (0 == FlatIdent_7517F) then
						v163 = 0 - 0;
						v164 = nil;
						FlatIdent_7517F = 1;
					end
				end
			end
			break;
		end
	end
end
function removeESP(v142)
	if v142.Character then
		for v230, v231 in pairs(v142.Character:GetChildren()) do
			local FlatIdent_55D83 = 0;
			local v232;
			local v233;
			while true do
				if (FlatIdent_55D83 == 1) then
					while true do
						if (v232 == (0 - 0)) then
							v233 = 0 + 0;
							while true do
								if (v233 == (0 + 0)) then
									if (v231:IsA(v7("\0\87\47\240\223\26\226\46\93\22\220\209\6\232\47\93\57\204", "\134\66\56\87\184\190\116")) and (v231.Name == v7("\25\2\57", "\85\92\81\105\219\121\139\65"))) then
										v231:Destroy();
									end
									if (v231:IsA(v7("\223\186\92\73\126\208\252\161\84\98\105\214", "\191\157\211\48\37\28")) and (v231.Name == v7("\250\44\196\35\30\214\12\224\29\52\220\26", "\90\191\127\148\124"))) then
										v231:Destroy();
									end
									break;
								end
							end
							break;
						end
					end
					break;
				end
				if (FlatIdent_55D83 == 0) then
					v232 = 0;
					v233 = nil;
					FlatIdent_55D83 = 1;
				end
			end
		end
	end
end
game:GetService(v7("\74\146\32\36\125\149\56\30\123\130", "\119\24\231\78")).RenderStepped:Connect(function()
	local v143 = v9.Character;
	if (not v143 or not v143:FindFirstChild(v7("\170\56\168\75\210\79\24\134", "\113\226\77\197\42\188\32"))) then
		return;
	end
	if (v66[v7("\27\3\224\186\122\48\245\167\55", "\213\90\118\148")] and v66[v7("\122\59\160\89\13\125\47\166\91", "\45\59\78\212\54")]()) then
		local v165 = v143:FindFirstChild(v7("\56\67\142\138\136\33\164\244\34\89\140\159\182\47\191\228", "\144\112\54\227\235\230\78\205"));
		if v165 then
			local v242 = nil;
			local v243 = 675 - 175;
			local v244 = nil;
			for v247, v248 in pairs(v8:GetPlayers()) do
				if ((v248 ~= v9) and (v248.Team ~= v9.Team)) then
					local FlatIdent_67F21 = 0;
					local v286;
					local v287;
					while true do
						if (FlatIdent_67F21 == 0) then
							v286 = 0 + 0;
							v287 = nil;
							FlatIdent_67F21 = 1;
						end
						if (FlatIdent_67F21 == 1) then
							while true do
								if (v286 == (0 - 0)) then
									v287 = v248.Character;
									if (v287 and v287:FindFirstChild(v7("\155\61\2\253\222\84\186\44\61\243\223\79\131\41\29\232", "\59\211\72\111\156\176")) and v287:FindFirstChild(v7("\102\146\238\44\64\136\234\41", "\77\46\231\131")) and v287:FindFirstChild(v7("\146\81\183\68", "\32\218\52\214"))) then
										local v296 = 0 - 0;
										local v297;
										local v298;
										local v299;
										while true do
											if (v296 == (1881 - (446 + 1434))) then
												v299 = v287.Head;
												if ((v297.Health > (1283 - (1040 + 243))) and (v298.Position.Y > (29 - 19))) then
													local FlatIdent_6DFD9 = 0;
													local v305;
													local v306;
													while true do
														if (FlatIdent_6DFD9 == 1) then
															while true do
																if (v305 == (1847 - (559 + 1288))) then
																	v306 = (v298.Position - v165.Position).Magnitude;
																	if (v306 < v243) then
																		local v308 = 1931 - (609 + 1322);
																		local v309;
																		while true do
																			if (v308 == 0) then
																				v309 = 454 - (13 + 441);
																				while true do
																					if (v309 == 0) then
																						local FlatIdent_1D164 = 0;
																						while true do
																							if (0 == FlatIdent_1D164) then
																								v242 = v298;
																								v244 = v299;
																								FlatIdent_1D164 = 1;
																							end
																							if (FlatIdent_1D164 == 1) then
																								v309 = 3 - 2;
																								break;
																							end
																						end
																					end
																					if (v309 == (2 - 1)) then
																						v243 = v306;
																						break;
																					end
																				end
																				break;
																			end
																		end
																	end
																	break;
																end
															end
															break;
														end
														if (FlatIdent_6DFD9 == 0) then
															v305 = 0;
															v306 = nil;
															FlatIdent_6DFD9 = 1;
														end
													end
												end
												break;
											end
											if (v296 == 0) then
												v297 = v287.Humanoid;
												v298 = v287.HumanoidRootPart;
												v296 = 1;
											end
										end
									end
									break;
								end
							end
							break;
						end
					end
				end
			end
			if (v242 and v244) then
				local FlatIdent_699E4 = 0;
				local v273;
				while true do
					if (FlatIdent_699E4 == 0) then
						v273 = (v242.Position - (v242.CFrame.LookVector * (14 - 11))) + Vector3.new(0 + 0, 7 - 5, 0);
						if (v273.Y > (4 + 6)) then
							local FlatIdent_5AB84 = 0;
							local v289;
							while true do
								if (FlatIdent_5AB84 == 0) then
									v289 = 0 + 0;
									while true do
										if (v289 == (2 - 1)) then
											Workspace.CurrentCamera.CFrame = CFrame.new(Workspace.CurrentCamera.CFrame.Position, v244.Position);
											break;
										end
										if (v289 == (0 + 0)) then
											local FlatIdent_13B77 = 0;
											while true do
												if (0 == FlatIdent_13B77) then
													v9.Character:SetPrimaryPartCFrame(CFrame.new(v273, v244.Position));
													markTarget(v244);
													FlatIdent_13B77 = 1;
												end
												if (FlatIdent_13B77 == 1) then
													v289 = 1 - 0;
													break;
												end
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
			end
		end
	end
	v143.Humanoid.WalkSpeed = (v66[v7("\125\7\52\173\245\240\109\91\77\28", "\58\46\119\81\200\145\208\37")] and v66[v7("\24\156\53\169\173\253\30\42\143\59", "\86\75\236\80\204\201\221")]() and v67[v7("\65\81\114\128\250\203\90\64\116\142", "\235\18\33\23\229\158")]) or (11 + 5);
	v143.Humanoid.JumpPower = (v66[v7("\122\175\204\171\16\152\206\180\67\174", "\219\48\218\161")] and v66[v7("\206\100\113\89\155\109\239\235\98\104", "\128\132\17\28\41\187\47")]() and v67[v7("\43\39\11\42\29\35\61\9\41\73", "\61\97\82\102\90")]) or (28 + 22);
	if (v66[v7("\133\32\173\66\201\94\10\12\236\15\166\70\200", "\105\204\78\203\43\167\55\126")] and v66[v7("\140\164\37\23\29\13\211\84\229\139\46\19\28", "\49\197\202\67\126\115\100\167")]()) then
		pcall(function()
			local v234 = 0;
			while true do
				if (v234 == (0 + 0)) then
					v9.PlayerGui.GUI.Client.Variables.ammocount.Value = 839 + 160;
					v9.PlayerGui.GUI.Client.Variables.ammocount2.Value = 978 + 21;
					break;
				end
			end
		end);
	end
	if (v66[v7("\25\84\159\27\133\85\81\62\87", "\62\87\59\191\73\224\54")] and v66[v7("\201\13\186\251\226\1\245\192\235", "\169\135\98\154")]()) then
		for v235, v236 in pairs(getgc(true)) do
			if ((typeof(v236) == v7("\205\98\42\87\233\58\199\197", "\168\171\23\68\52\157\83")) and getfenv(v236).script and tostring(getfenv(v236).script):lower():find(v7("\243\100\251", "\231\148\17\149\205\69\77"))) then
				if (debug.getinfo(v236).name == v7("\178\162\196\244\94\243", "\159\224\199\167\155\55")) then
					hookfunction(v236, function()
					end);
				end
			end
		end
	end
	for v156, v157 in pairs(v8:GetPlayers()) do
		if (v66[v7("\210\192\12", "\178\151\147\92")] and v66[v7("\169\206\124", "\26\236\157\44\82\114\44")]()) then
			if ((v157 ~= v9) and v157.Character) then
				local v249 = 433 - (153 + 280);
				local v250;
				while true do
					if (v249 == 0) then
						local FlatIdent_98327 = 0;
						while true do
							if (FlatIdent_98327 == 0) then
								v250 = v157.Team ~= v9.Team;
								if not v157.Character:FindFirstChild(v7("\15\29\229", "\59\74\78\181")) then
									createESP(v157, v250);
								end
								FlatIdent_98327 = 1;
							end
							if (FlatIdent_98327 == 1) then
								v249 = 1;
								break;
							end
						end
					end
					if (v249 == 1) then
						updateESP(v157, v250);
						break;
					end
				end
			end
		elseif v157.Character then
			removeESP(v157);
		end
	end
end);
createToggle(v52[v7("\3\208\72\87", "\211\69\177\58\58")], v7("\150\236\116\247\230\223", "\171\215\133\25\149\137"), false);
createToggle(v52[v7("\199\201\32\247", "\34\129\168\82\154\143\80\156")], v7("\182\187\63\14\70\90\201\164\187\62", "\233\229\210\83\107\40\46"), false);
createToggle(v52[v7("\231\67\32\219", "\101\161\34\82\182")], v7("\201\24\77\241\155\196\131\60\229", "\78\136\109\57\158\187\130\226"), false);
createToggle(v52[v7("\25\62\244\244", "\145\94\95\153")], v7("\206\221\17\208\74\247\213\204\23\222", "\215\157\173\116\181\46"), false);
createInput(v52[v7("\18\181\134\247", "\186\85\212\235\146")], v7("\241\145\19\251\61\174\112\195\130\29", "\56\162\225\118\158\89\142"), 86 - 56);
createToggle(v52[v7("\123\4\205\170", "\184\60\101\160\207\66")], v7("\27\151\113\172\113\160\115\179\34\150", "\220\81\226\28"), false);
createInput(v52[v7("\52\212\143\254", "\167\115\181\226\155\138")], v7("\200\55\234\76\59\83\201\237\49\243", "\166\130\66\135\60\27\17"), 72 + 8);
createToggle(v52[v7("\97\82\218\103\49\87", "\80\36\42\174\21")], v7("\103\30\49\115\64\25\35\127\14\49\58\119\65", "\26\46\112\87"), false);
createToggle(v52[v7("\156\59\191\102\190\172", "\212\217\67\203\20\223\223\37")], v7("\148\130\232\224\191\142\167\219\182", "\178\218\237\200"), false);
createToggle(v52[v7("\147\173\242\194\183\166", "\176\214\213\134")], v7("\210\157\133\148\138\89\86\231\185", "\57\148\205\214\180\200\54"), false, function(v146)
	if v146 then
		local v166 = 0 + 0;
		while true do
			if (v166 == (1 + 0)) then
				game:GetService(v7("\237\27\10\253\22\121\183\198", "\217\161\114\109\149\98\16")).GlobalShadows = false;
				game:GetService(v7("\62\41\63\116\168\125\28\39", "\20\114\64\88\28\220")).FogEnd = 907479 + 92520;
				v166 = 2;
			end
			if (v166 == 2) then
				for v276, v277 in pairs(workspace:GetDescendants()) do
					if (v277:IsA(v7("\1\0\192\160\241\211\177\52\36\223\189\236\196\184\35", "\221\81\97\178\212\152\176")) or v277:IsA(v7("\249\245\28\242\22", "\122\173\135\125\155")) or v277:IsA(v7("\183\204\15\178\58", "\168\228\161\96\217\95\81")) or v277:IsA(v7("\253\216\60\89", "\55\187\177\78\60\79")) or v277:IsA(v7("\8\214\79\231\73\220\137\34\192", "\224\77\174\63\139\38\175"))) then
						v277:Destroy();
					end
				end
				break;
			end
			if (v166 == (0 + 0)) then
				local FlatIdent_90E07 = 0;
				while true do
					if (FlatIdent_90E07 == 1) then
						v166 = 1;
						break;
					end
					if (FlatIdent_90E07 == 0) then
						for v278, v279 in pairs(game:GetService(v7("\62\244\50\60\98\27\243\50", "\22\114\157\85\84")):GetChildren()) do
							if (v279:IsA(v7("\230\199\6\214\120\240\174\193\200\7", "\200\164\171\115\164\61\150")) or v279:IsA(v7("\141\225\13\119\130\167\231\38\67\133\187\247\23", "\227\222\148\99\37")) or v279:IsA(v7("\17\94\93\249\244\22\84\84\243\250\39", "\153\83\50\50\150")) or v279:IsA(v7("\121\115\99\8\123\132\75\123\127\118\16\119\142\75\91\115\112\8", "\45\61\22\19\124\19\203"))) then
								v279.Enabled = false;
							end
						end
						settings().Rendering.QualityLevel = Enum.QualityLevel.Level01;
						FlatIdent_90E07 = 1;
					end
				end
			end
		end
	else
		local v167 = 0 - 0;
		while true do
			if (v167 == 0) then
				settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic;
				game:GetService(v7("\168\72\95\38\144\72\86\41", "\78\228\33\56")).GlobalShadows = true;
				break;
			end
		end
	end
end);
createToggle(v52[v7("\253\123\166\23\140\192\121\161", "\229\174\30\210\99")], v7("\62\222\182", "\89\123\141\230\49\141\93"), false);
createToggle(v52[v7("\192\116\226\24\25\68\244\98", "\42\147\17\150\108\112")], v7("\58\168\33\112\230\236\79\147\4", "\136\111\198\77\31\135"), false, function(v147)
	if v147 then
		v12:Destroy();
	end
end);